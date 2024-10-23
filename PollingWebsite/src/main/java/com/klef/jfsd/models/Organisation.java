package com.klef.jfsd.models;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="org_table")
public class Organisation 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false,length = 100, unique = true)
	private String orgname;
	
	@Column(nullable = false,length = 30,unique = true)
	private String orgemail;
	
	@Column(nullable = false,length = 30)
	private String orgpassword;
	
	@Column(nullable = false)
	private String orgaddress;
	
	@Column(length = 200)
	private String orglink;
	
	private Blob orglogo;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getOrgname() {
		return orgname;
	}

	public void setOrgname(String orgname) {
		this.orgname = orgname;
	}

	public String getOrgemail() {
		return orgemail;
	}

	public void setOrgemail(String orgemail) {
		this.orgemail = orgemail;
	}

	public String getOrgpassword() {
		return orgpassword;
	}

	public void setOrgpassword(String orgpassword) {
		this.orgpassword = orgpassword;
	}

	public String getOrgaddress() {
		return orgaddress;
	}

	public void setOrgaddress(String orgaddress) {
		this.orgaddress = orgaddress;
	}

	public String getOrglink() {
		return orglink;
	}

	public void setOrglink(String orglink) {
		this.orglink = orglink;
	}

	public Blob getOrglogo() {
		return orglogo;
	}

	public void setOrglogo(Blob orglogo) {
		this.orglogo = orglogo;
	}

	@Override
	public String toString() {
		return "Organisation [id=" + id + ", orgname=" + orgname + ", orgemail=" + orgemail + ", orgpassword="
				+ orgpassword + ", orgaddress=" + orgaddress + ", orglink=" + orglink + ", orglogo=" + orglogo + "]";
	}
	
}
