/**
 * 
 */
package br.com.yaw.prime.service;

import javax.ejb.Stateless;

import br.com.yaw.prime.jpa.domain.entity.MercadoriaEntity;

/**
 * @author cams7
 *
 */
@Stateless
public interface MercadoriaService extends BaseService<MercadoriaEntity, Long> {

}
