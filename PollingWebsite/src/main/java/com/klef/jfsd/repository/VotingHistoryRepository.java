package com.klef.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.models.VotingHistory;

@Repository
public interface VotingHistoryRepository extends JpaRepository<VotingHistory, Integer>{
	
	@Query("select v from VotingHistory v where v.pollid=?1 and v.voterid=?2")
	public VotingHistory checkuservoting(int pollid,int userid);
}
