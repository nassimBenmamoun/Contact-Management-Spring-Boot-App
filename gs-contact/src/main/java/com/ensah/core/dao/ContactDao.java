package com.ensah.core.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.ensah.core.bo.Contact;

public interface ContactDao extends JpaRepository<Contact, Long> {
	List<Contact> findByNomIgnoreCase(String nom);

	List<Contact> findByTel1OrTel2(String tel1, String tel2);

	List<Contact> findAllByOrderByNomAsc();
	
	@Query(value = "SELECT c FROM Contact c WHERE SOUNDEX(c.nom) = SOUNDEX(:searchTerm)")
	List<Contact> findByPhoneticNom(@Param("searchTerm") String searchTerm);
	

	

}