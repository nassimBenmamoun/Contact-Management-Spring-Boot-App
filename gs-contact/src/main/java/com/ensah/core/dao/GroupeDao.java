package com.ensah.core.dao;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


import com.ensah.core.bo.Groupe;

public interface GroupeDao extends JpaRepository<Groupe, Long>{
	
	List<Groupe> findByNom(String nom);
	
}
