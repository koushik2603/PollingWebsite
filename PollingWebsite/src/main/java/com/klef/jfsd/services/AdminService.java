package com.klef.jfsd.services;

import java.util.List;

import com.klef.jfsd.models.Admin;
import com.klef.jfsd.models.Poll;
import com.klef.jfsd.models.PollResults;
import com.klef.jfsd.models.User;

public interface AdminService {
	
	public Admin checkadminlogin(String username,String password);
	
	public String adduser(User user);
	
	public String deleteuser(int eid);
	
	public String updateuser(User user);
	
	public List<User> viewallusers();
	
	public String createpoll(Poll poll,PollResults r);
	
	public String deletepoll(int eid);
	
	public List<Poll> viewallpolls();
	
	public List<PollResults> viewallpollsresults();
}
