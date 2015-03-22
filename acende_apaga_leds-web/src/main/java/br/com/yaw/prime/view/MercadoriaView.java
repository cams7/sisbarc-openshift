package br.com.yaw.prime.view;

import static javax.faces.context.FacesContext.getCurrentInstance;

import java.io.Serializable;
import java.util.List;
import java.util.ResourceBundle;

import javax.ejb.EJB;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.bean.ViewScoped;

import br.com.yaw.prime.jpa.domain.entity.MercadoriaEntity;
import br.com.yaw.prime.service.MercadoriaService;

/**
 * Componente responsável por integrar o front-end (páginas JSF) c/ camada de
 * serviço (EJB), para resolver o cadastro de <code>Mercadoria</code>.
 * 
 * <p>
 * Trata-se de um <code>Managed Bean</code>, ou seja, as instâncias dessa classe
 * são controladas pelo <code>JSF</code>. Um objeto é criado ao carregar alguma
 * página do cadastro (Lista / Novo / Editar). Enquanto a página permanecer
 * aberta no browser, o objeto <code>MercadoriaMB</code> permanece no servidor.
 * </p>
 * 
 * <p>
 * Esse componente atua com um papel parecido com o <code>Controller</code> de
 * outros frameworks <code>MVC</code>, ele resolve o fluxo de navegação e liga
 * os componentes visuais com os dados.
 * </p>
 * 
 * @author YaW Tecnologia
 */
@ManagedBean(name = "mercadoriaMB")
@ViewScoped
// @SessionScoped
public class MercadoriaView implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * Container injeta a referencia p/ o ejb MercadoriaService
	 */
	@EJB
	private MercadoriaService service;

	private Long idSelecionado;

	/**
	 * Lista com a(s) <code>Mercadoria</code>(s) apresentandas no
	 * <code>Datatable</code>.
	 */
	private List<MercadoriaEntity> mercadorias;

	/**
	 * Referência para a mercadoria utiliza na inclusão (nova) ou edição.
	 */
	private MercadoriaEntity mercadoria;

	public MercadoriaView() {
		super();
	}

	public void setIdSelecionado(Long idSelecionado) {
		this.idSelecionado = idSelecionado;
	}

	public Long getIdSelecionado() {
		return idSelecionado;
	}

	public MercadoriaEntity getMercadoria() {
		return mercadoria;
	}

	public void incluir() {
		mercadoria = new MercadoriaEntity();
		// log.debug("Pronto pra incluir");
	}

	public void editar() {
		if (idSelecionado == null) {
			return;
		}
		mercadoria = service.find(idSelecionado);
		// log.debug("Pronto pra editar");
	}

	public List<MercadoriaEntity> getMercadorias() {
		if (mercadorias == null) {
			mercadorias = service.findAll();
		}
		return mercadorias;
	}

	public String salvar() {
		try {
			service.save(mercadoria);
		} catch (Exception ex) {
			// log.error("Erro ao salvar mercadoria.", ex);
			addMessage(getMessageFromI18N("msg.erro.salvar.mercadoria"),
					ex.getMessage());
			return "";
		}
		// log.debug("Salvour mercadoria "+mercadoria.getId());
		return "listaMercadorias";
	}

	public String remover() {
		try {
			service.remove(mercadoria);
		} catch (Exception ex) {
			// log.error("Erro ao remover mercadoria.", ex);
			addMessage(getMessageFromI18N("msg.erro.remover.mercadoria"),
					ex.getMessage());
			return "";
		}
		// log.debug("Removeu mercadoria "+mercadoria.getId());
		return "listaMercadorias";
	}

	/**
	 * @param key
	 * @return Recupera a mensagem do arquivo properties
	 *         <code>ResourceBundle</code>.
	 */
	private String getMessageFromI18N(String key) {
		ResourceBundle bundle = ResourceBundle.getBundle("messages_labels",
				getCurrentInstance().getViewRoot().getLocale());
		return bundle.getString(key);
	}

	/**
	 * Adiciona um mensagem no contexto do Faces (<code>FacesContext</code>).
	 * 
	 * @param summary
	 * @param detail
	 */
	private void addMessage(String summary, String detail) {
		getCurrentInstance().addMessage(
				null,
				new FacesMessage(summary, summary.concat("<br/>")
						.concat(detail)));
	}

}
