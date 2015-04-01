/**
 * 
 */
package br.com.cams7.util.jaxb;

import java.io.Serializable;

import javax.xml.bind.annotation.adapters.XmlAdapter;

/**
 * @author cams7
 *
 */
public class SerializableAdapter extends XmlAdapter<String, Serializable> {

	@Override
	public Serializable unmarshal(String value) throws Exception {
		return null;
	}

	@Override
	public String marshal(Serializable value) throws Exception {
		return null;
	}

}
