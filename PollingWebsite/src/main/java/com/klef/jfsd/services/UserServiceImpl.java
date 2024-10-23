package com.klef.jfsd.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.models.Poll;
import com.klef.jfsd.models.PollResults;
import com.klef.jfsd.models.User;
import com.klef.jfsd.models.VotingHistory;
import com.klef.jfsd.repository.PollRepository;
import com.klef.jfsd.repository.ResultsRepository;
import com.klef.jfsd.repository.UserRepository;
import com.klef.jfsd.repository.VotingHistoryRepository;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private PollRepository pollRepository;
	
	@Autowired
	private ResultsRepository resultsRepository;
	
	@Autowired
	private VotingHistoryRepository historyRepository;

	@Override
	public String addUser(User u) {
		userRepository.save(u);
		return "You have been registered successfully";
	}

	@Override
	public String deleteUser(int eid) {
			
		return null;
	}

	@Override
	public String updateUser(User u) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> viewallusers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User checkuserlogin(String email, String pwd) {
		return userRepository.checkuserlogin(email, pwd);
	}

	@Override
	public List<Poll> viewactivepolls() {
		return pollRepository.viewactivepolls();
	}

	@Override
	public List<Poll> viewcompletedpolls() {
		return pollRepository.viewcompletedpolls();
	}

	@Override
	public User viewuserbyid(int eid) {
		return userRepository.findById(eid).get();
	}

	@Override
	public VotingHistory checkpollstatus(int voterid,int pollid) {
		VotingHistory vh=historyRepository.checkuservoting(pollid, voterid);
		return vh;
	}

	@Override
	public Poll viewpollbyid(int pid) {
		return pollRepository.findById(pid).get();
	}

	@Override
	public void savevotinghistory(VotingHistory vh,int x,int pollid) {
		PollResults p = resultsRepository.viewresult(pollid);
		if(x==1)
			resultsRepository.updaterecord1(vh.getPollid(),p.getA()+1,p.getTotalvoters()+1);
		if(x==2)
			resultsRepository.updaterecord2(vh.getPollid(),p.getB()+1,p.getTotalvoters()+1);
		if(x==3)
			resultsRepository.updaterecord3(vh.getPollid(),p.getC()+1,p.getTotalvoters()+1);
		historyRepository.save(vh);
	}

}
