package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.SpaceAlien;

@Transactional
@Service
public class SpaceAlienDAOImpl implements SpaceAlienDAO{
	@PersistenceContext
	private EntityManager em;
	
	public SpaceAlien findById(int id) {
		return em.find(SpaceAlien.class, id);
	}
	
	public SpaceAlien update(int id, SpaceAlien sa) {
		SpaceAlien dbSA = em.find(SpaceAlien.class, id);
		dbSA.setName(sa.getName());
		dbSA.setLanguage(sa.getLanguage());
		dbSA.setLandOfOrigin(sa.getLandOfOrigin());
		if (sa.getImage() != null) {
			dbSA.setImage(sa.getImage());
		}
		dbSA.setCharacteristic(sa.getCharacteristic());
		return dbSA;
	}

	@Override
	public SpaceAlien create(SpaceAlien sa) {
		em.persist(sa);
		return sa;
	}

	@Override
	public SpaceAlien findByName(String name) {
		String jpql = "SELECT sa FROM SpaceAlien sa WHERE sa.name = :name";
		List<SpaceAlien> sa = em.createQuery(jpql, SpaceAlien.class)
				.setParameter("name", name)
				.getResultList();
		return sa.isEmpty()? null : sa.get(0);
	}

	@Override
	public List<SpaceAlien> getEm() {
		String jpql = "SELECT sa FROM SpaceAlien sa";
		List<SpaceAlien> sa = em.createQuery(jpql, SpaceAlien.class)
				.getResultList();
		return sa.isEmpty()? null : sa;
	}

}
