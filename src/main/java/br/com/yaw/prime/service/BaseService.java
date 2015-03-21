package br.com.yaw.prime.service;

import java.util.List;

import br.com.yaw.prime.jpa.domain.entity.AbstractEntity;

public interface BaseService<T extends AbstractEntity, PK extends Number> {
	public T save(T e);

	public void remove(T entity);

	public T find(PK id);

	public List<T> findAll();

	public List<T> findRange(int[] range);

	public long count();
}
