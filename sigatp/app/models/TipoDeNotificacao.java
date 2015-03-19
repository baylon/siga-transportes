package models;

public enum TipoDeNotificacao {
	AUTUACAO("AUTUA��O"), PENALIDADE("PENALIDADE");
	
	private String descricao;
	
	private TipoDeNotificacao(String descricao){
		this.setDescricao(descricao);
	}

	private void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	public String getDescricao() {
		return this.descricao;
	}
	
	@Override
	public String toString() {
		return this.name();
	}
}
