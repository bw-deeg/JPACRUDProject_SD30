package com.skilldistillery.jpacrud.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.SpaceAlien;

@Transactional
@Service
public class SpaceAlienDAOImpl {
	@PersistenceContext
	private EntityManager em;
	
	public SpaceAlien findById(int id) {
		return em.find(SpaceAlien.class, id);
	}

}
