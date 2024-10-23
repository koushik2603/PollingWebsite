package com.klef.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.models.OrgUser;

@Repository
public interface OrgUserRepository extends JpaRepository<OrgUser, Integer>
{
	@Query(" select ou from OrgUser ou where ou.email=?1 and ou.password=?2 ")
	public OrgUser checkorguserlogin(String email, String password);
}
