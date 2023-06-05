package com.ensah.core.services;

import java.util.ArrayList;
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
		List<Contact> l = contactDao.findByNomIgnoreCase(nom);
		return l != null && !l.isEmpty() ? l : null;
	}
	
	@Override
	public List<Contact> getContactsByPhoneticNom(String nom) {
		List<Contact> l = contactDao.findByPhoneticNom(nom);
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

	
	@Override
	public List<Contact> getContactsByNomWithMistakes(String nom) {
		List<Contact> allContacts = contactDao.findAll();
        List<Contact> matchedContacts = new ArrayList<>();

        for (Contact contact : allContacts) {
            String contactName = contact.getNom().toLowerCase();
            int editDistance = calculateEditDistance(nom.toLowerCase(), contactName);
            
            // Définissez une valeur de seuil pour déterminer si le contact est une correspondance suffisante
            int threshold = 3;

            if (editDistance <= threshold) {
                matchedContacts.add(contact);
            }
        }

        return matchedContacts;
	}
	
	private int calculateEditDistance(String str1, String str2) {
		int m = str1.length();
        int n = str2.length();

        // Create a matrix to store the edit distances
        int[][] dp = new int[m + 1][n + 1];

        // Initialize the first row and column of the matrix
        for (int i = 0; i <= m; i++) {
            dp[i][0] = i;
        }
        for (int j = 0; j <= n; j++) {
            dp[0][j] = j;
        }

        // Fill in the matrix using dynamic programming
        for (int i = 1; i <= m; i++) {
            for (int j = 1; j <= n; j++) {
                // If the characters are the same, no operation needed
                if (str1.charAt(i - 1) == str2.charAt(j - 1)) {
                    dp[i][j] = dp[i - 1][j - 1];
                } else {
                    // Calculate the cost of deletion, insertion, and substitution
                    int deletionCost = dp[i - 1][j] + 1;
                    int insertionCost = dp[i][j - 1] + 1;
                    int substitutionCost = dp[i - 1][j - 1] + 1;

                    // Choose the minimum cost among the three options
                    dp[i][j] = Math.min(deletionCost, Math.min(insertionCost, substitutionCost));
                }
            }
        }

        // The bottom-right cell of the matrix contains the edit distance
        return dp[m][n];
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



	@Override
	public void deleteGroupe(Long id) {
		
		groupeDao.deleteById(id);
	}



	@Override
	public List<Groupe> getGroupesByNom(String nom) {
		List<Groupe> l = groupeDao.findByNom(nom);
		return l != null && !l.isEmpty() ? l : null;
	}



	@Override
	public Groupe getGroupeById(Long id) {
		return groupeDao.findById(id).get();
	}



	@Override
	public void updateGroupe(Groupe pGroupe) {
		groupeDao.save(pGroupe);
	}



	


	



	


	

}
