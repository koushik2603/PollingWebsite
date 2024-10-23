package com.klef.jfsd.services;

import java.util.List;

import com.klef.jfsd.models.Member;
import com.klef.jfsd.models.OrgUser;
import com.klef.jfsd.models.Organisation;

public interface OrganisationService 
{
	public String regorg(Organisation org);
	public Organisation checkorglogin(String email, String password);
	public Organisation vieworgbyid(int id);
	
	public String addMember(Member m);
	public List<Member> viewallmembers();
	public void deletemember(int id);
	public Member viewmemberbyid(int id);
	
	public String addorguser(OrgUser ou);
	public List<OrgUser> viewallorgusers();
	public void deleteorguser(int id);
	public OrgUser vieworguserbyid(int id);
	public OrgUser checkorguserlogin(String email, String password);
}
