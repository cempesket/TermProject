package com.cem.demo.repositories;

import java.util.UUID;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.cem.demo.model.Account;

public interface AccountRepository extends CrudRepository<Account, UUID> {
	@Query("SELECT a FROM Account a where a.name = :userName")
	Account findByName(@Param("userName") String userName);

	@Transactional
	@Modifying
	@Query("UPDATE Account a SET a.address = :address WHERE a.name = :userName")
	void update(@Param("address") String address, @Param("userName") String userName);

}
