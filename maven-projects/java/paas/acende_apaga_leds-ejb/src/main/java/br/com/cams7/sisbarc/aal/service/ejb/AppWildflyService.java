package br.com.cams7.sisbarc.aal.service.ejb;

import br.com.cams7.sisbarc.aal.jpa.domain.entity.LEDEntity.EstadoLED;

public interface AppWildflyService {

	public EstadoLED getEstadoLEDAtivadoPorBotao(byte pin);

}
