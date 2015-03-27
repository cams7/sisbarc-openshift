package com.javacodegeeks.enterprise.ws;

//import java.net.InetAddress;
//import java.net.NetworkInterface;
//import java.net.SocketException;
//import java.net.UnknownHostException;
//import java.util.List;
//import java.util.Map;

import javax.annotation.Resource;
import javax.jws.WebService;
import javax.xml.ws.WebServiceContext;

//import javax.xml.ws.handler.MessageContext;

@WebService(endpointInterface = "com.javacodegeeks.enterprise.ws.WebServiceInterface")
public class WebServiceImpl implements WebServiceInterface {

	@Resource
	private WebServiceContext serviceContext;

	@Override
	public String printMessage(String message) {
		// MessageContext messageContext = serviceContext.getMessageContext();
		//
		// // get detail from request headers
		// @SuppressWarnings("unchecked")
		// Map<String, List<String>> headers = (Map<String, List<String>>)
		// messageContext
		// .get(MessageContext.HTTP_REQUEST_HEADERS);
		// List<String> userList = headers.get("username");
		// List<String> passList = headers.get("password");
		//
		// String username = userList != null ? userList.get(0) : null;
		// String password = passList != null ? passList.get(0) : null;
		//
		// String address = null;
		// String computerName = null;
		//
		// try {
		// InetAddress localHost = InetAddress.getLocalHost();
		//
		// address = localHost.getHostAddress();
		// computerName = localHost.getHostName();
		//
		// } catch (UnknownHostException e) {
		// e.printStackTrace();
		// }
		//
		// return "Ola usuario '" + username + "', sua senha e '" + password
		// + "' e voce envio a mensagem '" + message
		// + "'. Esse servico foi chamado na maquina (" + computerName
		// + ") de IP '" + address + "'";
		message = "A mensagem enviado foi '" + message + "'";
		System.out.println(message);

		return message;
	}

}