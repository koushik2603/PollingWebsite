package com.klef.jfsd.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.models.Member;
import com.klef.jfsd.models.OrgUser;
import com.klef.jfsd.models.Organisation;
import com.klef.jfsd.repository.MemberRepository;
import com.klef.jfsd.repository.OrgUserRepository;
import com.klef.jfsd.repository.OrganisationRepository;

@Service
public class OrganisationServiceImpl implements OrganisationService
{
	@Autowired
	private OrganisationRepository organisationRepository;
	
	@Autowired
	private MemberRepository memberRepository;
	
	@Autowired
	private OrgUserRepository orgUserRepository;
	
	@Override
	public String addMember(Member m)
	{
		memberRepository.save(m);
		return "Member added successfully";
	}

	@Override
	public List<Member> viewallmembers() 
	{
		return memberRepository.findAll();
	}

	@Override
	public void deletemember(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Member viewmemberbyid(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String regorg(Organisation org)
	{
		organisationRepository.save(org);
		return "Registered Successfully";
	}

	@Override
	public Organisation checkorglogin(String email, String password) 
	{
		return organisationRepository.checkorglogin(email, password);
	}

	@Override
	public Organisation vieworgbyid(int id) 
	{
		return organisationRepository.findById(id).get();
	}

	@Override
	public String addorguser(OrgUser ou) 
	{
		
		orgUserRepository.save(ou);
		return "Org User Added successfully";
	}

	@Override
	public List<OrgUser> viewallorgusers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteorguser(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public OrgUser vieworguserbyid(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OrgUser checkorguserlogin(String email, String password) {
		return orgUserRepository.checkorguserlogin(email, password);
	}

}
