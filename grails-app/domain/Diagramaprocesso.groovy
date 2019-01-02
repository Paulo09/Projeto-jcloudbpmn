class Diagramaprocesso {

String fileName
String type
String fullPath
String projeto
byte[] fileData

Date dataCadastro = new Date()
Date dataEdicao = new Date()

//Projeto projeto
static belogsTo = Projeto

String id 
static mapping = {
id generator:'uuid'
}
static constraints = {
	fileData(maxSize:1073741824)
}


}
