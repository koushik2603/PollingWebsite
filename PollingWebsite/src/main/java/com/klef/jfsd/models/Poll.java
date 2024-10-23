package com.klef.jfsd.models;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "poll_table")
public class Poll {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "pollname" ,nullable = false, length = 60 )
	private String name;
	
	@Column(nullable = false, length = 60)
	private String hostname;
	
	@Column(name = "cand1" ,nullable = false, length = 60 )
	private String c1;
	
	@Column(name = "cand2" ,nullable = false, length = 60 )
	private String c2;
	
	@Column(name = "cand3" ,nullable = false, length = 60 )
	private String c3;
	
	@Column(nullable = false, length = 60 )
	private boolean activeness;
	
	@Column(name = "polltype", nullable = false, length = 60 )
	private String type;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getHostname() {
		return hostname;
	}

	public void setHostname(String hostname) {
		this.hostname = hostname;
	}

	public String getC1() {
		return c1;
	}

	public void setC1(String c1) {
		this.c1 = c1;
	}

	public String getC2() {
		return c2;
	}

	public void setC2(String c2) {
		this.c2 = c2;
	}

	public String getC3() {
		return c3;
	}

	public void setC3(String c3) {
		this.c3 = c3;
	}

	public boolean isActiveness() {
		return activeness;
	}

	public void setActiveness(boolean activeness) {
		this.activeness = activeness;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
}
