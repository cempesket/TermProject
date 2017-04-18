package com.cem.demo.repositories;

import org.springframework.data.repository.CrudRepository;

import com.cem.demo.model.Cart;

public interface CartRepository extends CrudRepository<Cart, Long> {

}
