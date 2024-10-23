package com.klef.jfsd.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.models.Organisation;

@Repository
public interface OrganisationRepository extends CrudRepository<Organisation, Integer>
{
	@Query(" select o from Organisation o where o.orgemail=?1 and o.orgpassword=?2 ")
	public Organisation checkorglogin(String email, String password);
}
