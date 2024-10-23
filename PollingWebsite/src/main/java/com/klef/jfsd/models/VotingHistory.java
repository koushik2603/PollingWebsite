package com.klef.jfsd.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
public class VotingHistory {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false)
	private int voterid;
	
	@Column(nullable = false)
	private int pollid;
	
	@Column(nullable = false,length = 18)
	private String pollname;
	
	@Column(nullable = false,length = 18)
	private String vote;

	public int getVoterid() {
		return voterid;
	}

	public void setVoterid(int voterid) {
		this.voterid = voterid;
	}

	public int getPollid() {
		return pollid;
	}

	public void setPollid(int pollid) {
		this.pollid = pollid;
	}

	public String getPollname() {
		return pollname;
	}

	public void setPollname(String pollname) {
		this.pollname = pollname;
	}

	public String getVote() {
		return vote;
	}

	public void setVote(String vote) {
		this.vote = vote;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "VotingHistory [id=" + id + ", voterid=" + voterid + ", pollid=" + pollid + ", pollname=" + pollname
				+ ", vote=" + vote + "]";
	}
}
