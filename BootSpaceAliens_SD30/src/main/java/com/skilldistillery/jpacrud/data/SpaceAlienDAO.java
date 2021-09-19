package com.skilldistillery.jpacrud.data;

import com.skilldistillery.jpacrud.entities.SpaceAlien;

public interface SpaceAlienDAO {
	SpaceAlien findById(int id);
	SpaceAlien update(int id, SpaceAlien sa);
	SpaceAlien create(SpaceAlien sa);
	SpaceAlien findByName(String name);
}
