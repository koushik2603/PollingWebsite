package com.klef.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.models.PollResults;

import jakarta.transaction.Transactional;

@Repository
public interface ResultsRepository extends JpaRepository<PollResults, Integer>{
	
	@Modifying
	@Transactional
	@Query("update PollResults p set p.a=?2 , p.totalvoters=?3 where p.pollid=?1")
	public void updaterecord1(int pollid,int res,int t);
	
	@Modifying
	@Transactional
	@Query("update PollResults p set p.b=?2 , p.totalvoters=?3 where p.pollid=?1")
	public void updaterecord2(int pollid,int res,int t);
	
	@Modifying
	@Transactional
	@Query("update PollResults p set p.c=?2 , p.totalvoters=?3 where p.pollid=?1")
	public void updaterecord3(int pollid,int res,int t);
	
	@Query("from PollResults p where p.pollid=?1")
	public PollResults viewresult(int pollid);
	
}
