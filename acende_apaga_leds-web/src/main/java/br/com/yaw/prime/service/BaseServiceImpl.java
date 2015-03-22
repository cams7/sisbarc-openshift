package br.com.yaw.prime.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import br.com.yaw.prime.jpa.domain.entity.AbstractEntity;

/**
 * Classe resolve os métodos básicos de cadastro (CRUD) com API da
 * <code>JPA</code>.
 * 
 * @author YaW Tecnologia
 */
public abstract class BaseServiceImpl<T extends AbstractEntity, PK extends Number>
		implements BaseService<T, PK> {

	/**
	 * Classe da entidade, necessário para o método
	 * <code>EntityManager.find</code>.
	 */
	private Class<T> entityClass;

	public BaseServiceImpl(Class<T> entityClass) {
		super();
		this.entityClass = entityClass;
	}

	public T save(T e) {
		if (e.getId() != null)
			return getEntityManager().merge(e);
		else {
			getEntityManager().persist(e);
			return e;
		}
	}

	public void remove(T entity) {
		getEntityManager().remove(getEntityManager().merge(entity));
	}

	public T find(PK id) {
		return getEntityManager().find(entityClass, id);
	}

	public List<T> findAll() {
		CriteriaBuilder cb = getEntityManager().getCriteriaBuilder();
		CriteriaQuery<T> cq = cb.createQuery(entityClass);

		Root<T> from = cq.from(entityClass);
		cq.select(from);

		TypedQuery<T> query = getEntityManager().createQuery(cq);

		List<T> entities = query.getResultList();
		return entities;
	}

	public List<T> findRange(int[] range) {
		CriteriaBuilder cb = getEntityManager().getCriteriaBuilder();
		CriteriaQuery<T> cq = cb.createQuery(entityClass);

		Root<T> from = cq.from(entityClass);
		cq.select(from);

		TypedQuery<T> query = getEntityManager().createQuery(cq);
		query.setMaxResults(range[1] - range[0]);
		query.setFirstResult(range[0]);

		List<T> entities = query.getResultList();
		return entities;
	}

	public long count() {
		CriteriaBuilder cb = getEntityManager().getCriteriaBuilder();
		CriteriaQuery<Long> cq = cb.createQuery(Long.class);

		Root<T> from = cq.from(entityClass);
		cq.select(cb.count(from));

		TypedQuery<Long> query = getEntityManager().createQuery(cq);

		long count = query.getSingleResult();
		return count;
	}

	/**
	 * Exige a definição do <code>EntityManager</code> responsável pelas
	 * operações de persistência.
	 */
	protected abstract EntityManager getEntityManager();
}
