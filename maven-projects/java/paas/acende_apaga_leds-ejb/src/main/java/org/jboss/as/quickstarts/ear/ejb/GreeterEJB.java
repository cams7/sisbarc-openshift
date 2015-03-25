/*
 * JBoss, Home of Professional Open Source
 * Copyright 2013, Red Hat, Inc. and/or its affiliates, and individual
 * contributors by the @authors tag. See the copyright.txt in the
 * distribution for a full listing of individual contributors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.jboss.as.quickstarts.ear.ejb;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.ejb.Stateless;
import javax.xml.namespace.QName;
import javax.xml.ws.BindingProvider;
import javax.xml.ws.Service;
import javax.xml.ws.handler.MessageContext;

import com.javacodegeeks.enterprise.ws.WebServiceInterface;

/**
 * A simple Hello World EJB. The EJB does not use an interface.
 * 
 * @author paul.robinson@redhat.com, 2011-12-21
 */
@Stateless
public class GreeterEJB {
	/**
	 * This method takes a name and returns a personalised greeting.
	 * 
	 * @param name
	 *            the name of the person to be greeted
	 * @return the personalised greeting.
	 */
	public String sayHello(String name) {

		// WebServiceInterface port = null;

		switch (name.toLowerCase()) {
		case "vaio":
			// QName qname = new
			// QName("http://ws.enterprise.javacodegeeks.com/",
			// "WebServiceImplService");
			// try {
			// URL wsdlUrl = new URL(
			// "http://192.168.1.7:8181/acende_apaga_leds/sayhello?wsdl");
			// Service service = Service.create(wsdlUrl, qname);
			// serviceInterface = service.getPort(WebServiceInterface.class);
			// } catch (MalformedURLException e) {
			// e.printStackTrace();
			// }

			// ((BindingProvider) port).getRequestContext().put(
			// BindingProvider.ENDPOINT_ADDRESS_PROPERTY,
			// "http://192.168.1.7:8181/acende_apaga_leds/sayhello");

			// try {
			// WebServiceImplService service = new WebServiceImplService(
			// new URL(
			// "http://192.168.1.7:8181/acende_apaga_leds/sayhello?wsdl"),
			// new QName("http://ws.enterprise.javacodegeeks.com/",
			// "WebServiceImplService"));
			// port = service.getWebServiceImplPort();
			// } catch (MalformedURLException e) {
			// e.printStackTrace();
			// }
			break;
		case "vbox":
			// ((BindingProvider) port).getRequestContext().put(
			// BindingProvider.ENDPOINT_ADDRESS_PROPERTY,
			// "http://192.168.1.5:8181/acende_apaga_leds/sayhello");
			// try {
			// WebServiceImplService service = new WebServiceImplService(
			// new URL(
			// "http://192.168.1.5:8181/acende_apaga_leds/sayhello?wsdl"),
			// new QName("http://ws.enterprise.javacodegeeks.com/",
			// "WebServiceImplService"));
			// port = service.getWebServiceImplPort();
			// } catch (MalformedURLException e) {
			// e.printStackTrace();
			// }
			break;
		default:
			// port = (new WebServiceImplService()).getWebServiceImplPort();
			break;
		}

		// if (port == null)
		// return null;

		// String message = port.printMessage(name);
		// return message;

		final String WS_URL = "http://192.168.1.7:8181/acende_apaga_leds/sayhello?wsdl";

		try {
			URL url = new URL(WS_URL);
			QName qname = new QName("http://ws.enterprise.javacodegeeks.com/",
					"WebServiceImplService");
			Service service = Service.create(url, qname);
			WebServiceInterface port = service
					.getPort(WebServiceInterface.class);

			/******************* UserName & Password ******************************/
			Map<String, Object> req_ctx = ((BindingProvider) port)
					.getRequestContext();
			req_ctx.put(BindingProvider.ENDPOINT_ADDRESS_PROPERTY, WS_URL);

			Map<String, List<String>> headers = new HashMap<String, List<String>>();
			headers.put("username",
					Collections.singletonList("ceanma@gmail.com"));
			headers.put("password", Collections.singletonList("abc@12345"));
			req_ctx.put(MessageContext.HTTP_REQUEST_HEADERS, headers);
			/**********************************************************************/

			String message = port.printMessage(name);
			return message;
		} catch (MalformedURLException e) {
			e.printStackTrace();
		}

		return null;
	}
}
