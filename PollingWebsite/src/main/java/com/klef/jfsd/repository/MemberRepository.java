package com.klef.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.models.Member;

@Repository
public interface MemberRepository extends JpaRepository<Member, Integer>
{

}
