package com.ensah.core.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ensah.core.bo.Contact;
import com.ensah.core.bo.Groupe;
import com.ensah.core.dao.ContactDao;
import com.ensah.core.dao.GroupeDao;

@Service
@Transactional
public class ContactServiceImpl implements IContactService{
	@Autowired
	private ContactDao contactDao;
	
	@Autowired
    private GroupeDao groupeDao;
	
	
	public void addContact(Contact pContact) {
		contactDao.save(pContact);	
	}


	
	public List<Contact> getAllContacts() {
		
		return contactDao.findAll();
	}


	
	public void deleteContact(Long id) {
		
		contactDao.deleteById(id);
		
	}


	
	public void updateContact(Contact pContact) {
		contactDao.save(pContact);
		
	}


	
	public Contact getContactById(Long id) {
		
		
		return contactDao.findById(id).get();
	}


	@Override
	public List<Contact> getContactsByNom(String nom) {
		List<Contact> l = contactDao.findByNom(nom);
		return l != null && !l.isEmpty() ? l : null;
	}


	@Override
	public Contact getContactByTel(String tel) {
		List<Contact> l = contactDao.findByTel1OrTel2(tel, tel);
		return l != null && !l.isEmpty() ? l.get(0) : null;
	}


	@Override
	public List<Contact> getContactsOrderByNomAsc() {
		
		List<Contact> list = contactDao.findAllByOrderByNomAsc();
		
		return list;
	}


	// GROUPE Management
	
	@Override
	public List<Groupe> getAllGroupes() {
		return groupeDao.findAll();
	}



	@Override
	public void addGroupe(Groupe pGroupe) {
		groupeDao.save(pGroupe);
		
	}

}
