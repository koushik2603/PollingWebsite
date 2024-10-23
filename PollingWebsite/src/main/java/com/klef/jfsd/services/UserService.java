package com.klef.jfsd.services;

import java.util.List;

import com.klef.jfsd.models.Poll;
import com.klef.jfsd.models.User;
import com.klef.jfsd.models.VotingHistory;

public interface UserService {
	
	public String addUser(User u);
	
	public String deleteUser(int eid);
	
	public String updateUser(User u);
	
	public List<User> viewallusers();
	
	public User viewuserbyid(int eid);
	
	public User checkuserlogin(String email,String pwd);
	
	public List<Poll> viewactivepolls();
	
	public List<Poll> viewcompletedpolls();
	
	public Poll viewpollbyid(int pid);
	
	public VotingHistory checkpollstatus(int voterid,int pollid);
	
	public void savevotinghistory(VotingHistory vh,int x,int pollid);

}
