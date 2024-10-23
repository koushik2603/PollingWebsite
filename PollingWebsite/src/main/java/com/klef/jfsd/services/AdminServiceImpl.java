package com.klef.jfsd.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.models.Admin;
import com.klef.jfsd.models.Poll;
import com.klef.jfsd.models.PollResults;
import com.klef.jfsd.models.User;
import com.klef.jfsd.repository.AdminRepository;
import com.klef.jfsd.repository.PollRepository;
import com.klef.jfsd.repository.ResultsRepository;
import com.klef.jfsd.repository.UserRepository;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private PollRepository pollRepository;
	
	@Autowired
	private ResultsRepository resultsRepository;
	
	@Autowired
	private AdminRepository adminRepository;

	@Override
	public Admin checkadminlogin(String username, String password) {
		return adminRepository.checkadminlogin(username, password);
	}

	@Override
	public String adduser(User user) {
		userRepository.save(user);
		return "User Added Successfully";
	}

	@Override
	public String deleteuser(int eid) {
		
		Optional<User> optional = userRepository.findById(eid);
		
		if(optional.isPresent())
		{
			userRepository.deleteById(eid);
			return "User Deleted Successfully";
		}
		return "User ID Not Found";
	}

	@Override
	public String updateuser(User user) {
		User u = userRepository.findById(user.getId()).get();
		u.setLocation(user.getLocation());
		u.setName(user.getName());
		u.setContactno(user.getContactno());
		return "User Details Updated Successfully";
	}

	@Override
	public List<User> viewallusers() {
		List<User> list = userRepository.findAll();
		return list;
	}

	@Override
	public String createpoll(Poll poll,PollResults p) {
		pollRepository.save(poll);
		resultsRepository.save(p);
		return "A Poll creation is being done successfully";
	}

	@Override
	public String deletepoll(int eid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Poll> viewallpolls() {
		
		List<Poll> lst = pollRepository.findAll();
		return lst;
	}

	@Override
	public List<PollResults> viewallpollsresults() {
		List<PollResults> list=resultsRepository.findAll();
		return list;
	}

}
