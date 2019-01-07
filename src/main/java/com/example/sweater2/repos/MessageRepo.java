package com.example.sweater2.repos;

import org.springframework.data.repository.CrudRepository;

import com.example.sweater2.domain.Message;
import org.springframework.stereotype.Repository;

// This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
// CRUD refers Create, Read, Update, Delete

@Repository
public interface MessageRepo extends CrudRepository<Message, Long> {


}
