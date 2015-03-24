package com.javacodegeeks.enterprise.ws;

import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;

import javax.jws.WebService;

@WebService(endpointInterface = "com.javacodegeeks.enterprise.ws.WebServiceInterface")
public class WebServiceImpl implements WebServiceInterface {

	@Override
	public String printMessage(String userName) {

		String address = "";
		String computerName = "";
		String mac = "";

		try {
			InetAddress localHost = InetAddress.getLocalHost();

			address = localHost.getHostAddress();
			computerName = localHost.getHostName();

			NetworkInterface network = NetworkInterface
					.getByInetAddress(localHost);

			byte[] array = network.getHardwareAddress();

			StringBuilder sb = new StringBuilder();
			for (int i = 0; i < array.length; i++)
				sb.append(String.format("%02X%s", array[i],
						(i < array.length - 1) ? "-" : ""));

			mac = sb.toString();

		} catch (UnknownHostException | SocketException e) {
			e.printStackTrace();
		}
		return "Ola '" + userName + "', esse servico foi chamado na maquina ("
				+ computerName + ") de IP '" + address + "' e MAC '" + mac
				+ "'";
	}

}