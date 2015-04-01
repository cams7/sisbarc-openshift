
package org.jboss.as.quickstarts.ear.ws;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.xml.ws.Action;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.8
 * Generated source version: 2.2
 * 
 */
@WebService(name = "HelloService", targetNamespace = "http://ws.teste.cams7.com.br/")
@SOAPBinding(style = SOAPBinding.Style.RPC)
public interface HelloService {


    /**
     * 
     * @param arg0
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(partName = "return")
    @Action(input = "http://ws.teste.cams7.com.br/HelloService/printMessageRequest", output = "http://ws.teste.cams7.com.br/HelloService/printMessageResponse")
    public String printMessage(
        @WebParam(name = "arg0", partName = "arg0")
        String arg0);

}
