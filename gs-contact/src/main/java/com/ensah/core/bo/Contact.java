package com.ensah.core.bo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;


@Entity
public class Contact {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotBlank(message = "This field is required")
	private String nom;
	
	@NotBlank(message = "This field is required")
	private String prenom;

	@NotBlank(message = "This field is required")
	private String tel1;

	@NotBlank(message = "This field is required")
	private String tel2;
	
	@NotBlank(message = "This field is required")
	private String adresse;
	
	@Email(message = "Enter a valid email")
	@NotBlank(message = "This field is required")
	private String email_perso;
	
	@Email(message = "Enter a valid email")
	@NotBlank(message = "This field is required")
	private String email_pro;
	
	@NotBlank(message = "This field is required")
	private String genre;
	
	
	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (!(o instanceof Contact)) {
			return false;
		}
		return id != null && id.equals(((Contact) o).getId());
	}

	@Override
	public int hashCode() {
		return getClass().hashCode();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getTel1() {
		return tel1;
	}

	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}

	public String getTel2() {
		return tel2;
	}

	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getEmail_perso() {
		return email_perso;
	}

	public void setEmail_perso(String email_perso) {
		this.email_perso = email_perso;
	}

	public String getEmail_pro() {
		return email_pro;
	}

	public void setEmail_pro(String email_pro) {
		this.email_pro = email_pro;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	@Override
	public String toString() {
		return "Contact [id=" + id + ", nom=" + nom + ", prenom=" + prenom + ", tel1=" + tel1 + ", tel2=" + tel2
				+ ", adresse=" + adresse + ", email_perso=" + email_perso + ", email_pro=" + email_pro + ", genre="
				+ genre + "]";
	}
	
	

}
