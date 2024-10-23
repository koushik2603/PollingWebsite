package com.klef.jfsd.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "results")
public class PollResults {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pollid;
	
	@Column(name = "pname",nullable = false,length = 30)
	private String pollname;
	
	@Column(nullable = false)
	private int a;
	
	@Column(nullable = false)
	private int b;
	
	@Column(nullable = false)
	private int c;
	
	@Column(name = "tvoters",nullable = false)
	private int totalvoters;

	@Override
	public String toString() {
		return "PollResults [pollid=" + pollid + ", pollname=" + pollname + ", a=" + a + ", b=" + b + ", c=" + c
				+ ", totalvoters=" + totalvoters + "]";
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

	public int getA() {
		return a;
	}

	public void setA(int a) {
		this.a = a;
	}

	public int getB() {
		return b;
	}

	public void setB(int b) {
		this.b = b;
	}

	public int getC() {
		return c;
	}

	public void setC(int c) {
		this.c = c;
	}

	public int getTotalvoters() {
		return totalvoters;
	}

	public void setTotalvoters(int totalvoters) {
		this.totalvoters = totalvoters;
	}
	
	

}
