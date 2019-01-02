class Projeto {

String nomeProjeto
String descricaoProjeto
String emailProjeto
Date dataCadastro = new Date()
Date dataEdicao = new Date()

String id 
static mapping = {
id generator:'uuid'
}

Usuario usuario 
static hasMany = [usuario:Usuario,diagramaprocesso:Diagramaprocesso]


def beforeUpdate = {
		dataEdicao = new Date()
	}

String toString() {
		"${this.nomeProjeto}"
	}

}
