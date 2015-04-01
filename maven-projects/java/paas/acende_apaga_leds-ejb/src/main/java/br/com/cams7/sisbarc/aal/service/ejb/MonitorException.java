/**
 * 
 */
package br.com.cams7.sisbarc.aal.service.ejb;

/**
 * @author cams7
 *
 */
public class MonitorException extends Exception {

	private static final long serialVersionUID = 1L;

	public MonitorException() {
		super();
	}

	public MonitorException(String message, Throwable cause,
			boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public MonitorException(String message, Throwable cause) {
		super(message, cause);
	}

	public MonitorException(String message) {
		super(message);
	}

	public MonitorException(Throwable cause) {
		super(cause);
	}

}
