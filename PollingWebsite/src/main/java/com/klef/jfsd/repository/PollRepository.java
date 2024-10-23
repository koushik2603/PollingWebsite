package com.klef.jfsd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.models.Poll;

@Repository
public interface PollRepository extends JpaRepository<Poll, Integer>{
	
	@Query("from Poll p where p.activeness=true")
	public List<Poll> viewactivepolls();
	
	@Query("from Poll p where p.activeness=false")
	public List<Poll> viewcompletedpolls();

}
