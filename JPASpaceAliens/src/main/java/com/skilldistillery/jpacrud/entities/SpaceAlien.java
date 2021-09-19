package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="space_alien")
public class SpaceAlien {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	private String language;
	
	@Column(name="land_of_origin")
	private String landOfOrigin;
	
	private String image;
	
	private String characteristic;

	// methods
	public SpaceAlien() {}
	
	public SpaceAlien(String name, String language, String image) {
		this.name = name;
		this.language = language;
		this.image = image;
	}
	
	public SpaceAlien(String name, String language, String landOfOrigin, String characteristic) {
		this.name = name;
		this.language = language;
		this.landOfOrigin = landOfOrigin;
		this.characteristic = characteristic;
	}
	
	public SpaceAlien(String name, String language, String landOfOrigin, String image, String characteristic) {
		this(name, language, image);
		this.landOfOrigin = landOfOrigin;
		this.characteristic = characteristic;
	}
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getLandOfOrigin() {
		return landOfOrigin;
	}

	public void setLandOfOrigin(String landOfOrigin) {
		this.landOfOrigin = landOfOrigin;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getCharacteristic() {
		return characteristic;
	}

	public void setCharacteristic(String characteristic) {
		this.characteristic = characteristic;
	}

	@Override
	public String toString() {
		return "SpaceAlien [id=" + id + ", name=" + name + ", language=" + language + ", landOfOrigin=" + landOfOrigin
				+ ", image=" + image + ", characteristic=" + characteristic + "]";
	}
	
	

}
