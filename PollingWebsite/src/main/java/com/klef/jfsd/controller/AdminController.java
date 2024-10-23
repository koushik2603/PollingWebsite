package com.klef.jfsd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.models.Admin;
import com.klef.jfsd.models.Poll;
import com.klef.jfsd.models.PollResults;
import com.klef.jfsd.models.User;
import com.klef.jfsd.repository.PollRepository;
import com.klef.jfsd.services.AdminService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv =new ModelAndView("Admin/adminlogin");
		return mv;	
	}
	
	@GetMapping("adminhome")
	public ModelAndView adminhome(HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		String str= (String) session.getAttribute("name");
		ModelAndView mv=new ModelAndView();
		if(str!=null)
		{
			mv.setViewName("Admin/adminhome");
		}
		else
		{
			mv.setViewName("Admin/loginfailed");
		}
		return mv;
	}
	
	@GetMapping("loginfailed")
	public String loginfailed()
	{
		return "Admin/loginfailed";
	}
	
	@PostMapping("checkadminlogin")
	public String checkadmlogin(HttpServletRequest request)
	{
		String uname = request.getParameter("username");
		String pwd = request.getParameter("password");
		Admin admin = adminService.checkadminlogin(uname, pwd);
		if(admin!=null)
		{
			HttpSession session=request.getSession();
			session.setAttribute("name",admin.getUsername());
			return "redirect:/adminhome";
		}
		return "redirect:/loginfailed";
	}
	
	@GetMapping("adminlogout")
	public String adminlogout(HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		session.invalidate();
		return "redirect:/adminlogin";
	}
	
	@GetMapping("display")
	public String display()
	{
		return "Admin/displaypage";
	}
	
	@GetMapping("addusers")
	public ModelAndView adduser()
	{
		ModelAndView mv = new ModelAndView("Admin/adduser");
		return mv;
	}
	
	@PostMapping("adduserdata")
	public ModelAndView adduserdata(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		
		String name = request.getParameter("name");
		String gender= request.getParameter("gender");
		String contactno = request.getParameter("contactno");
		String dob = request.getParameter("dob");
		String location = request.getParameter("location");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		User u = new User();
		u.setName(name);
		u.setGender(gender);
		u.setContactno(contactno);
		u.setEmail(email);
		u.setPassword(password);
		u.setLocation(location);
		u.setDateofbirth(dob);
		
		String msg = adminService.adduser(u);
		
		mv.setViewName("Admin/displaypage");
		mv.addObject("message","You have added an User Successfully");
		mv.addObject("link","addusers");
		
		return mv;
	}

	@GetMapping("viewallusers")
	public ModelAndView viewallusers()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Admin/viewusers");
		List<User> list=adminService.viewallusers();
		mv.addObject("userdata", list);
		return mv;
	}
	
	@GetMapping("deleteuser")
	public ModelAndView deleteuser()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Admin/deleteuser");
		List<User> list=adminService.viewallusers();
		mv.addObject("userdata", list);
		return mv;
	}
	
	@GetMapping("deleteusers")
	public String deleteusers(@RequestParam("id") int eid)
	{
		adminService.deleteuser(eid);
		return "redirect:/deleteuser";
	}
	
	@GetMapping("addpolls")
	public ModelAndView addpolls(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Admin/addpolls");
		mv.addObject("adminname",request.getSession().getAttribute("name"));
		return mv;
	}
	
	@PostMapping("insertpolldata")
	public ModelAndView addpoll(HttpServletRequest request)
	{
		ModelAndView mv =new ModelAndView();
		
		String pname=request.getParameter("pollname");
		String n1 = request.getParameter("n1");
		String n2 = request.getParameter("n2");
		String n3 = request.getParameter("n3");
		String host = request.getParameter("pollhost");
		String type = request.getParameter("polltype");
		
		Poll poll=new Poll();
		poll.setName(pname);
		poll.setActiveness(true);
		poll.setC1(n1);
		poll.setC2(n2);
		poll.setC3(n3);
		poll.setHostname(host);
		poll.setType(type);
		
		PollResults pr = new PollResults();
		pr.setA(0);
		pr.setB(0);
		pr.setC(0);
		pr.setPollname(pname);
		pr.setTotalvoters(0);
		
		String msg = adminService.createpoll(poll, pr);
		
		mv.setViewName("Admin/displaypage");
		mv.addObject("message",msg);
		mv.addObject("link","addpolls");
		
		return mv;
	}
	
	@GetMapping("viewallpolls")
	public ModelAndView viewallpolls()
	{
		ModelAndView mv = new ModelAndView();
		
		List<Poll> list=adminService.viewallpolls();
		mv.setViewName("Admin/viewallpolls");
		mv.addObject("polldata", list);
		return mv;
	}
	
	@GetMapping("viewpollresults")
	public ModelAndView viewresults()
	{
		ModelAndView mv = new ModelAndView();
		List<PollResults> list=adminService.viewallpollsresults();
		mv.setViewName("Admin/viewpollresults");
		mv.addObject("pollresultdata", list);
		return mv;
	}
	
	@GetMapping("userpolls")
	public ModelAndView userpolls()
	{
		ModelAndView mv = new ModelAndView("User/userpolls");
		List<Poll> list = adminService.viewallpolls();
		mv.addObject("polldata", list);
		return mv;
	}
	
}
