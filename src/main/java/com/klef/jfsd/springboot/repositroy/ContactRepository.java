package com.klef.jfsd.springboot.repositroy;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Contact;

@Repository
public interface ContactRepository extends CrudRepository<Contact, String>{

}
