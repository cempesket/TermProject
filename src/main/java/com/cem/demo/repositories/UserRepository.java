package com.cem.demo.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.cem.demo.model.User;

public interface UserRepository extends CrudRepository<User, Long>  {
	@Query("SELECT u FROM User u where u.userName = :username")
	User findByName(@Param("username")String userName);
	

}
