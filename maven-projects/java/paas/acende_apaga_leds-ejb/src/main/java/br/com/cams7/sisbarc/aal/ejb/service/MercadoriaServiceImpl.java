package br.com.cams7.sisbarc.aal.ejb.service;

import javax.ejb.Local;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import br.com.cams7.as.service.BaseServiceImpl;
import br.com.cams7.sisbarc.aal.jpa.domain.entity.MercadoriaEntity;

/**
 * Componente EJB que define as operações de negócio da entidade
 * <code>Mercadoria</code>.
 * 
 * <p>
 * Herda <code>AbstractPersistence</code> para resolver as operações básicas da
 * persistência de <code>Mercadoria</code>.
 * </p>
 * 
 * @author YaW Tecnologia
 */
@Stateless
@Local(MercadoriaService.class)
public class MercadoriaServiceImpl extends
		BaseServiceImpl<MercadoriaEntity, Long> implements MercadoriaService {

	/**
	 * O container injeta a referência para o <code>EntityManager</code>.
	 */
	@PersistenceContext(unitName = "acendeApagaLEDsUnit")
	private EntityManager em;

	public MercadoriaServiceImpl() {
		super();
	}

	@Override
	protected EntityManager getEntityManager() {
		return em;
	}

}
