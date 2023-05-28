package com.ensah.core.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ensah.core.bo.Contact;

public interface ContactDao extends JpaRepository<Contact, Long> {
	List<Contact> findByNom(String nom);
	
	List<Contact> findByTel1OrTel2(String tel1, String tel2);
	
	List<Contact> findAllByOrderByNomAsc();
}