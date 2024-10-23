package com.klef.jfsd.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.models.Member;
import com.klef.jfsd.repository.MemberRepository;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberRepository memberRepository;

    @Override
    public List<Member> getAllMembers() {
        return memberRepository.findAll(); // Assuming you have a repository to retrieve members from the database
    }
}
