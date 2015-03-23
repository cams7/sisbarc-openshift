package br.com.cams7.sisbarc.aal.jpa.domain.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import br.com.cams7.jpa.domain.BaseEntity;

/**
 * Classe de modelo que representa uma mercadoria. A mercadoria é um objeto
 * persistido, por isso utilizamos o nome entidade.
 * 
 * <p>
 * As funcionalidades desse sistema demonstração são concentradas no cadastro
 * (CRUD) de mercadorias.
 * </p>
 * 
 * <p>
 * Essa entidade é mapeada com anotações da <code>JPA</code>, o mecanismo padrão
 * Java para resolver o Mapeamento Objeto Relacional (<code>ORM</code>).
 * </p>
 * 
 * @author YaW Tecnologia
 */
@Entity
@Table(name = "mercadoria")
public class MercadoriaEntity extends BaseEntity<Long> {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	private String nome;

	private String descricao;

	private Integer quantidade;

	private Double preco;

	public MercadoriaEntity() {
		super();
	}

	public MercadoriaEntity(Long id) {
		super(id);
	}

	@Override
	public Long getId() {
		return id;
	}

	@Override
	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Double getPreco() {
		return preco;
	}

	public void setPreco(Double preco) {
		this.preco = preco;
	}

	public Integer getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(Integer quantidade) {
		this.quantidade = quantidade;
	}

}
