package com.ensah.core.web;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ensah.core.bo.Contact;
import com.ensah.core.bo.Groupe;
import com.ensah.core.services.IContactService;

@Controller
public class ContactController {
	
	@Autowired
	private IContactService contactService;
	
	@RequestMapping("/showForm")
	public String showForm(Model model) {
		
		model.addAttribute("contactModel", new Contact());
		model.addAttribute("contactList", contactService.getAllContacts());
		
		return "form";
	}
	
	@RequestMapping("/addContact")
	public String process(@Valid @ModelAttribute("contactModel") Contact contact, BindingResult bindingResult, Model model) {
		
		if (bindingResult.hasErrors()) {
			model.addAttribute("errorMsg", "Les données sont invalides.");
		}else {
			contactService.addContact(contact);
			model.addAttribute("infoMsg", "Contact ajouté avec succès");
		}
		
		model.addAttribute("contactList", contactService.getAllContacts());

		return "form";
	}
	
	@RequestMapping("/manageContacts")
	public String manageContacts(Model model) {
		
		model.addAttribute("contactList", contactService.getAllContacts());
		
		return "listContacts";
	}
	
	@RequestMapping(value = "/deleteContact/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable int id) {
		
		contactService.deleteContact(Long.valueOf(id));
		
		return "redirect:/manageContacts";
		
	}
	
	
	@RequestMapping(value = "/updateContactForm/{id}", method = RequestMethod.GET)
	public String updatePersonForm(@PathVariable int id, Model model) {

		model.addAttribute("contactModel", contactService.getContactById(Long.valueOf(id)));
		

		return "updateForm";
	}
	
	@RequestMapping("/updateContact")
	public String updateContact(@Valid @ModelAttribute("contactModel") Contact contact, BindingResult bindingResult ,Model model) {
		
		if (bindingResult.hasErrors()) {
			
			return "updateForm";
		}
		
		contactService.updateContact(contact);

		model.addAttribute("contactList", contactService.getAllContacts());
		
		return "redirect:/manageContacts";

	}
	
	
	@PostMapping(value = "searchContactByNom")
	public String searchContactByNom(@RequestParam String nom, Model model) {
		
		List<Contact> list = contactService.getContactsByNom(nom);
		
		model.addAttribute("contactList", list);
		
		return "listContacts";
		
	}
	
	
	@PostMapping(value = "searchContactByTel")
	public String searchContactByTel(@RequestParam String tel, Model model) {
		
		Contact c = contactService.getContactByTel(tel);
		
		List<Contact> list = new ArrayList<>();
		if (c != null) {
			list.add(c);

		}
		model.addAttribute("contactList", list);
		
		return "listContacts";
		
	}
	
	@RequestMapping("showContactsOrderedByNom")
	public String OrderByNom(Model model) {
		
		model.addAttribute("contactList", contactService.getContactsOrderByNomAsc());
		
		return "listContacts";
	}
	
	
	
	@RequestMapping("/showFormGroupe")
	public String showFormGroupe(Model model) {
		
		model.addAttribute("contactList", contactService.getAllContacts());
		model.addAttribute("groupeModel", new Groupe());
		model.addAttribute("groupeList", contactService.getAllGroupes());
		
		return "groupeform";
	}
	
	@RequestMapping("/addGroupe")
	public String addGroupe(@Valid @ModelAttribute("groupeModel") Groupe groupe, BindingResult bindingResult, Model model) {
		
		if (bindingResult.hasErrors()) {
			model.addAttribute("errorMsg", "Les données sont invalides.");
		}else {
			contactService.addGroupe(groupe);
			model.addAttribute("infoMsg", "Groupe ajouté avec succès");
		}
		
		model.addAttribute("groupeList", contactService.getAllGroupes());
		model.addAttribute("contactList", contactService.getAllContacts());

		return "groupeform";
	}
	
	@RequestMapping("/manageGroupes")
	public String manageGroupes(Model model) {
		
		model.addAttribute("groupeList", contactService.getAllGroupes());
		
		return "listGroupes";
	}
	
	@RequestMapping(value = "/deleteGroupe/{id}", method = RequestMethod.GET)
	public String deleteGroupe(@PathVariable int id) {
		
		contactService.deleteGroupe(Long.valueOf(id));
		
		return "redirect:/manageGroupes";
		
	}
	
	@PostMapping(value = "searchGroupeByNom")
	public String searchGroupeByNom(@RequestParam String nom, Model model) {
		
		List<Groupe> list = contactService.getGroupesByNom(nom);
		
		model.addAttribute("groupeList", list);
		
		return "listGroupes";
		
	}

}
