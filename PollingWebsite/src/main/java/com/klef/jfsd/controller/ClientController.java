package com.klef.jfsd.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.models.Poll;
import com.klef.jfsd.models.User;
import com.klef.jfsd.models.VotingHistory;
import com.klef.jfsd.services.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController {
	
	@Autowired
	public UserService userService;
	
	@GetMapping("/")
	public String home()
	{
		return "General/home";
	}
	
	@GetMapping("nav")
	public ModelAndView navbar()
	{
		ModelAndView mv = new ModelAndView("General/navbar");
		return mv;
	}
	
	@GetMapping("blogs")
	public ModelAndView blogs()
	{
		ModelAndView mv  = new ModelAndView("General/blogs");
		return mv;
	}
	
	@GetMapping("awareness")
	public ModelAndView awareness()
	{
		ModelAndView mv = new ModelAndView("General/awareness");
		return mv;
	}
	
	@GetMapping("userlogin")
	public ModelAndView userlogin()
	{
		ModelAndView mv = new ModelAndView("General/login");
		return mv;
	}
	
	
	@PostMapping("userregister")
	public String addUser(HttpServletRequest request)
	{
		String name = request.getParameter("name");
		String gender= request.getParameter("gender");
		String contactno = request.getParameter("contactno");
		String dob = request.getParameter("dob");
		String location = request.getParameter("location");
		String email = request.getParameter("email");
		String password = request.getParameter("pwd");
		
		User u = new User();
		u.setName(name);
		u.setGender(gender);
		u.setContactno(contactno);
		u.setEmail(email);
		u.setPassword(password);
		u.setLocation(location);
		u.setDateofbirth(dob);
		
		String str = userService.addUser(u);
		System.out.println(str);
		
		return "redirect:/userlogin";
	}
	
	@GetMapping("loginfail")
	public String loginfailed()
	{
		return "User/loginfailed";
	}
	

	@GetMapping("userhome")
	public ModelAndView userhome(HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		String str= (String) session.getAttribute("name");
		ModelAndView mv=new ModelAndView();
		if(str!=null)
		{
			mv.setViewName("User/home");
		}
		else
		{
			mv.setViewName("User/loginfailed");
		}
		return mv;
	}
	
	@PostMapping("checkuserlogin")
	public String checkuserlogin(HttpServletRequest request)
	{
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		User u = userService.checkuserlogin(email, pwd);

		if(u!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("id",u.getId());
			session.setAttribute("name",u.getName());
			return "redirect:/userhome";
		}
		return "redirect:/loginfail";
	}
	
	@GetMapping("userdetermination")
	public String determineuser()
	{
		return "General/userdetermination";
	}
	
	@GetMapping("userblogs")
	public String userblogs()
	{
		return "User/userblogs";
	}
	
	@GetMapping("viewactivepolls")
	public ModelAndView viewactivepolls(HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		int voterid=(int)session.getAttribute("id");
		
		List<Poll> list=userService.viewactivepolls();
		ModelAndView mv= new ModelAndView("User/activepolls");
	    mv.addObject("plist", list);
	    mv.addObject("vid", voterid);
	    return mv;
	}
	
	@GetMapping("viewcompletedpolls")
	@ResponseBody
	public List<Poll> viewcompletedpolls()
	{
		return userService.viewcompletedpolls();
	}
	
	@PostMapping("checklogin")
	public String checklogin(HttpServletRequest request)
	{
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		User u = userService.checkuserlogin(email, pwd);
		
		String str="";
		if(u!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("id",u.getId());
			session.setAttribute("name",u.getName());
			str="redirect:/userhome";
		}
		else
		{
			ModelAndView mv=new ModelAndView();
			mv.setViewName("displaymsg");
			mv.addObject("name","Details are incorrect");
		}
		return str;
	}
	
	@GetMapping("userlogout")
	public String userlogout(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView("General/login");
		HttpSession session=request.getSession();
		session.removeAttribute("id");
		session.removeAttribute("name");
		return "redirect:/userlogin";
	}
	
	@GetMapping("checkvotestatus/{vid}/{pid}")
	public String checkvotestatus(@PathVariable("vid") int voterid,@PathVariable("pid")  int pollid)
	{
		VotingHistory vh=userService.checkpollstatus(voterid, pollid);
		if(vh==null)
		{
			return "redirect:/viewpoll?pid="+pollid;
		}
		else
			return "redirect:/voted";
	}
	
	@GetMapping("viewpoll")
	public ModelAndView viewpoll(@RequestParam("pid") int pid,HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView("User/pollform");
	
		HttpSession session=request.getSession();
		int voter_id=(int)session.getAttribute("id");
		
		List<Poll> plist=new ArrayList<Poll>();
		plist.add(userService.viewpollbyid(pid));
		
		mv.addObject("plist", plist);
		mv.addObject("voterid", voter_id);
		
		return mv;
	}
	
	@PostMapping("collectpolldata")
	public String generatepolldata(HttpServletRequest request)
	{
		String str=request.getParameter("value-radio");
		
		int voterid=Integer.parseInt(request.getParameter("voterid"));
		int pollid=Integer.parseInt(request.getParameter("pollid"));
		
		Poll pollinfo=userService.viewpollbyid(pollid);
		
		VotingHistory vh = new VotingHistory();
		vh.setPollid(pollid);
		vh.setPollname(pollinfo.getName());
		vh.setVote(str);
		vh.setVoterid(voterid);
		
		int x=0;
		if(str.equals(pollinfo.getC1()))
			x=1;
		else if(str.equals(pollinfo.getC2()))
			x=2;
		else if(str.equals(pollinfo.getC3()))
			x=3;
		
	    userService.savevotinghistory(vh, x,pollid);
		System.out.println(x+" "+str);
		return "redirect:/dismsg";
	}
	
	@GetMapping("dismsg")
	public String displaymsg()
	{
		return "User/template";
	}
	
	@GetMapping("voted")
	public String voted()
	{
		return "User/displaymsg";
	}
	
	@GetMapping("greviences")
	public String greviences()
	{
		return "User/greviences";
	}
	
	@PostMapping("greviencedata")
	public String submitdata()
	{
		return "redirect:/greviences";
	}
}
