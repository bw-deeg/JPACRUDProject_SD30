package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.SpaceAlien;

public interface SpaceAlienDAO {
	SpaceAlien findById(int id);
	SpaceAlien findByName(String name);
	List<SpaceAlien> getEm();
	SpaceAlien update(int id, SpaceAlien sa);
	SpaceAlien create(SpaceAlien sa);
}
