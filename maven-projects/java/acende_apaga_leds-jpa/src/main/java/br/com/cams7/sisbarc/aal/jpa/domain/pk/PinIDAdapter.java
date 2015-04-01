/**
 * 
 */
package br.com.cams7.sisbarc.aal.jpa.domain.pk;

import java.io.Serializable;

import javax.xml.bind.annotation.adapters.XmlAdapter;

/**
 * @author cams7
 *
 */
public class PinIDAdapter extends XmlAdapter<PinPK, Serializable> {

	@Override
	public Serializable unmarshal(PinPK value) throws Exception {
		return value;
	}

	@Override
	public PinPK marshal(Serializable value) throws Exception {
		return (PinPK) value;
	}

}
