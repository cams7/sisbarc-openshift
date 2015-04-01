/**
 * 
 */
package br.com.cams7.sisbarc.aal.service.ejb;

import java.io.Serializable;
import java.util.List;
import java.util.concurrent.Future;

import br.com.cams7.as.service.BaseService;
import br.com.cams7.jpa.domain.BaseEntity;

/**
 * @author cams7
 *
 */
public interface AALService<E extends BaseEntity<ID>, ID extends Serializable>
		extends BaseService<E, ID> {

	public Future<Boolean> atualizaPino(E entidade) throws MonitorException;

	public Future<Boolean> sincronizaEventos(List<E> entidades)
			throws MonitorException;

	public Future<Boolean> alteraEventos(List<E> entidades)
			throws MonitorException;

}
