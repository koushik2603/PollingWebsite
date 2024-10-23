package com.klef.jfsd.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.models.Member;
import com.klef.jfsd.models.OrgUser;
import com.klef.jfsd.models.Organisation;
import com.klef.jfsd.services.MemberService;
import com.klef.jfsd.services.OrganisationService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class OrganisationController 
{
	@Autowired
	private OrganisationService organisationService;
	
	@Autowired
    private MemberService memberService;

	
	@GetMapping("orghome")
	public ModelAndView orghome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Organisation/orghome");
		return mv;
	}
	
	@GetMapping("regorg")
	public ModelAndView regorg()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Organisation/regorg");
		return mv;
	}
	
	@PostMapping("insertorg")
	public ModelAndView insertorg(HttpServletRequest request,@RequestParam("orglogo") MultipartFile file) throws IOException, SerialException, SQLException
	{
		String msg = null;
		ModelAndView mv = new ModelAndView();
		
		
		try 
		{
			String name = request.getParameter("orgname");
			String email = request.getParameter("orgemail");
			String password = request.getParameter("orgpassword");
			String address = request.getParameter("orgaddress");
			String link = request.getParameter("orglink");
			byte[] bytes = file.getBytes();
		    Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
		    
		    Organisation o = new Organisation();
		    o.setOrgname(name);
		    o.setOrgemail(email);
		    o.setOrgpassword(password);
		    o.setOrgaddress(address);
		    o.setOrglink(link);
		    o.setOrglogo(blob);
		    
		    msg= organisationService.regorg(o);
		    System.out.println(msg);
		    mv.setViewName("Organisation/orgmessage");
		    mv.addObject("message",msg);
		}
		catch (Exception e) 
		{
			msg = e.getMessage();
		    System.out.println(msg.toString());
		    mv.setViewName("Organisation/orgerror");
		    mv.addObject("message",msg);
		}
		return mv;
	}
	
	@GetMapping("orglogin")
	public ModelAndView orglogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Organisation/orglogin");
		return mv;
	}
	
	@PostMapping("checkorglogin")
	public ModelAndView checkorglogin(HttpServletRequest request)
	{
		
		String email = request.getParameter("email");
	    String password = request.getParameter("password");
	    Organisation o = organisationService.checkorglogin(email, password);
	    ModelAndView mv = new ModelAndView();
	    if(o!=null)
	    {
	      
	      HttpSession session = request.getSession();
	      
	      session.setAttribute("id", o.getId());
	      session.setAttribute("orgname", o.getOrgname());
	      
	      mv.setViewName("Organisation/orghome");
	    }
	    else
	    {
	      mv.setViewName("Organisation/orglogin");
	      mv.addObject("message", "Login Failed");
	    }
	    return mv;
	    
	}
	
	@GetMapping("displayorglogo")
	public ResponseEntity<byte[]> displayorglogo(@RequestParam("id") String idStr) throws IOException, SQLException
	{
		int id = Integer.parseInt(idStr);
	  Organisation org =  organisationService.vieworgbyid(id);
	  byte [] imageBytes = null;
	  imageBytes = org.getOrglogo().getBytes(1,(int) org.getOrglogo().length());

	  return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}

	
	@GetMapping("addmember")
	public ModelAndView addmember()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Organisation/addmember");
		return mv;
	}
	
	@PostMapping("insertmember")
	public ModelAndView insertmemberaction(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		String msg = null;
		try 
		{
			String name = request.getParameter("name");
		    String gender = request.getParameter("gender");
		    String email = request.getParameter("email");
		    
		    Member m = new Member();
		    m.setName(name);
		    m.setEmail(email);
		    m.setGender(gender);
		    msg = organisationService.addMember(m);
		    mv.setViewName("Organisation/memmessage");
		    mv.addObject("message", msg);
		} 
		catch (Exception e) 
		{
			mv.setViewName("Organisation/displayerror");
			msg = e.getMessage();
			mv.addObject("message", msg);
		}
		return mv;
	}
	
	@GetMapping("viewallmembers")
    public ModelAndView viewallmembers()
    {
      ModelAndView mv = new ModelAndView();
      List<Member> memlist = organisationService.viewallmembers();
      mv.addObject("memdata",memlist);
      mv.setViewName("Organisation/viewallmembers");
      return mv;
    }
	
	@GetMapping("orguserreg")
	public ModelAndView orguserreg()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Organisation/orguserreg");
		return mv;
	}
	
	@PostMapping("insertorguser")
	public ModelAndView insertorguser(HttpServletRequest request)
	{
		String msg = null;
		ModelAndView mv = new ModelAndView();
		
		try 
		{
			String name = request.getParameter("orgusername");
			String gender = request.getParameter("orgusergender");
			String email = request.getParameter("orguseremail");
			String password = request.getParameter("orguserpassword");
		    
		    OrgUser ou = new OrgUser();
		    ou.setName(name);
		    ou.setGender(gender);
		    ou.setEmail(email);
		    ou.setPassword(password);
		    
		    msg= organisationService.addorguser(ou);
		    System.out.println(msg);
		    mv.setViewName("Organisation/orgusermessage");
		    mv.addObject("message",msg);
		}
		catch (Exception e) 
		{
			msg = e.getMessage();
		    System.out.println(msg.toString());
		    mv.setViewName("Organisation/orgusererror");
		    mv.addObject("message",msg);
		}
		return mv;
	}
	
	@GetMapping("orguserlogin")
	public ModelAndView orguserlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Organisation/orguserlogin");
		return mv;
	}
	
	@PostMapping("checkorguserlogin")
	public ModelAndView checkorguserlogin(HttpServletRequest request)
	{
		String email = request.getParameter("email");
	    String password = request.getParameter("password");
	    OrgUser ou = organisationService.checkorguserlogin(email, password);
	    ModelAndView mv = new ModelAndView();
	    if(ou!=null)
	    {
	      
	      HttpSession session = request.getSession();
	      
	      session.setAttribute("id", ou.getId());
	      session.setAttribute("name", ou.getName());
	      
	      mv.setViewName("Organisation/orguserhome");
	    }
	    else
	    {
	      mv.setViewName("Organisation/orguserlogin");
	      mv.addObject("message", "Login Failed");
	    }
	    return mv;
	}
	
	@GetMapping("pollcreation")
	public ModelAndView createPoll(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("Organisation/pollcreation"); // This should match the name of your JSP file
        mv.addObject("orgname",request.getSession().getAttribute("orgname"));
        List<Member> memberList = memberService.getAllMembers();
        mv.addObject("memberList", memberList);

        return mv;
	}
	
	
}
