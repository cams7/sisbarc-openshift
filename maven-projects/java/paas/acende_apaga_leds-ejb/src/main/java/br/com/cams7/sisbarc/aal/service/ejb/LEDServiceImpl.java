package br.com.cams7.sisbarc.aal.service.ejb;

import java.util.List;
import java.util.concurrent.Future;
import java.util.logging.Level;

import javax.ejb.AsyncResult;
import javax.ejb.Asynchronous;
import javax.ejb.Local;
import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import br.com.cams7.arduino.ArduinoPinType;
import br.com.cams7.sisbarc.aal.jpa.domain.entity.LEDEntity;
import br.com.cams7.sisbarc.aal.jpa.domain.entity.LEDEntity.EstadoLED;
import br.com.cams7.sisbarc.aal.jpa.domain.entity.LEDEntity_;
import br.com.cams7.sisbarc.aal.jpa.domain.pk.PinPK;
import br.com.cams7.sisbarc.aal.service.ws.AppArduinoService;
import br.com.cams7.sisbarc.aal.service.ws.LEDEntityArray;

@Stateless
@Local(LEDService.class)
@Remote(AppWildflyService.class)
public class LEDServiceImpl extends AALServiceImpl<LEDEntity, PinPK> implements
		LEDService, AppWildflyService {

	public LEDServiceImpl() {
		super();
	}

	@Asynchronous
	public Future<LEDEntity> alteraLEDEstado(LEDEntity led) throws MonitorException{
		AppArduinoService monitor = getMonitor();

		if (led.getEstado() == EstadoLED.ACESO && !led.isAtivo()) {
			led.setEstado(EstadoLED.APAGADO);
		} else {
			EstadoLED estado = monitor.alteraEstadoLED(led.getId(),
					led.getEstado());

			led.setEstado(estado);

			if (estado != null) {
				getLog().info(
						"LED '" + led.getId() + "' esta '" + led.getEstado()
								+ "'");
			} else
				getLog().log(
						Level.WARNING,
						"Ocorreu um erro ao tenta buscar o ESTADO do LED '"
								+ led.getId() + "'");
		}

		return new AsyncResult<LEDEntity>(led);
	}

	public Future<List<LEDEntity>> getLEDsAtivadoPorBotao() throws MonitorException{
		@SuppressWarnings("unchecked")
		List<LEDEntity> leds = getEntityManager().createNamedQuery(
				"Led.buscaLEDsAtivadoPorBotao").getResultList();

		AppArduinoService monitor = getMonitor();

		LEDEntityArray array = monitor.buscaEstadoLEDs(getIDs(leds));

		for (LEDEntity l : array.getItem()) {
			PinPK id = l.getId();
			EstadoLED estado = l.getEstado();

			for (LEDEntity led : leds)
				if (id.equals(led.getId())) {
					led.setEstado(estado);
					break;
				}
		}

		return new AsyncResult<List<LEDEntity>>(leds);
	}

	@Override
	public EstadoLED getEstadoLEDAtivadoPorBotao(byte pin) {
		CriteriaBuilder builder = getEntityManager().getCriteriaBuilder();
		CriteriaQuery<Boolean> criteria = builder.createQuery(Boolean.class);

		Root<LEDEntity> root = criteria.from(getEntityType());

		criteria.select(root.get(LEDEntity_.ativo));

		Predicate isActiveButton = builder.isTrue(root
				.get(LEDEntity_.ativadoPorBotao));
		Predicate equalPin = builder.equal(root.get(LEDEntity_.id), new PinPK(
				ArduinoPinType.DIGITAL, Short.valueOf(pin)));

		Predicate and = builder.and(isActiveButton, equalPin);

		criteria.where(and);

		TypedQuery<Boolean> query = getEntityManager().createQuery(criteria);
		Boolean active = query.getSingleResult();
		if (active == Boolean.TRUE)
			return EstadoLED.ACESO;

		return EstadoLED.APAGADO;
	}

}
