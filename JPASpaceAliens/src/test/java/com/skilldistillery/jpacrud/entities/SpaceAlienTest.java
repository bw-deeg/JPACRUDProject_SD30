package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class SpaceAlienTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private SpaceAlien sa;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPASpaceAliens");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		sa = em.find(SpaceAlien.class, 4);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		sa = null;
	}

	@Test
	void test() {
		assertNotNull(sa);
		assertEquals("Vulcan", sa.getName()	);
	}

}
