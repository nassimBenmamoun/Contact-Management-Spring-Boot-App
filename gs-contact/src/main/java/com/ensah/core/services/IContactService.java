package com.ensah.core.services;

import java.util.List;

import com.ensah.core.bo.Contact;
import com.ensah.core.bo.Groupe;

public interface IContactService {
	
	public void addContact(Contact pContact);
	
	public List<Contact> getAllContacts();
	
	public void deleteContact(Long id); 
	
	public void updateContact(Contact pContact);
	
	public Contact getContactById(Long id);
	
	public List<Contact> getContactsByNom(String nom);
	
	public Contact getContactByTel(String tel);
	
	public List<Contact> getContactsOrderByNomAsc();
	
	public List<Contact> getContactsByPhoneticNom(String nom);
	
	public List<Contact> getContactsByNomWithMistakes(String nom);
	
	
	// GROUPE Management
	public List<Groupe> getAllGroupes();
	
	public void addGroupe(Groupe pGroupe);
	
	public void deleteGroupe(Long id); 
	
	public List<Groupe> getGroupesByNom(String nom);
	
	public Groupe getGroupeById(Long id);
	
	public void updateGroupe(Groupe pGroupe);
	



}
