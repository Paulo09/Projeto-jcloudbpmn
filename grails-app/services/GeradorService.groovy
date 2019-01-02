import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

class GeradorService {

	//*******************************************************************************//
	//                                BPMN-Core                                      //
	//*******************************************************************************//
	//  Nome autor: Paulo Castro                                                     //
	//  Descricao: Metodo que compoe a classe geradora de aplicativos dinamicos.     //
	//  Metodos estaticos onde ficarao todas as regras de negocios.                  // 
	//*******************************************************************************//
	//                        Endereco Repositorio GitHub                            // 
	//*******************************************************************************//
	//    GitHub:																     //
    //    Data primeiro commit:                                                      // 	
	//*******************************************************************************//
	//*******************************************************************************//
	//    GitHub:https:																 //
    //    Data ultimo commit:                                                        // 	
	//*******************************************************************************//
	//*******************************************************************************//
	//Caminho da Classe: Caminho onde as classes serao criadas Ex: (C:\\testeNSA\\classe\\)
	//Caminho: Caminho do diagrama BPMN Ex: (C:\\testeNSA\\nome.xml)
	//Tag: Indica de onde as informaÇões serão tiradas do diagrama BPMN Ex: (bpmn2:dataStoreReference)
	//Atributo:Tag que será buscada no arquivo que contem o diagrama BPMN Ex: (NAME)
	//Ex:objeto.criarClasse("C:\\testeNSA\\classe\\", "C:\\testeNSA\\nome.xml", "bpmn2:dataStoreReference", "name");
	//Desenolvedor: Paulo Castro 02/11/2017
    //*******************************************************************************//
	
    boolean transactional = false

    def String criarClasse(String caminhoClasse,String caminho,String tag,String atributo){
		String retorno="";String atributos = "";String nomeClasse = "";
		 try {  DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
	            DocumentBuilder builder = factory.newDocumentBuilder();
	            Document doc = builder.parse(caminho);
	            NodeList listaDePessoas = doc.getElementsByTagName(tag);
	            int tamanhoLista = listaDePessoas.getLength();
	            for (int i = 0; i < tamanhoLista; i++) {
	            	atributos = "";nomeClasse = "";
	                Node noPessoa = listaDePessoas.item(i);
	                if(noPessoa.getNodeType() == Node.ELEMENT_NODE){
	                    Element elementoPessoa = (Element) noPessoa;
	                    retorno = elementoPessoa.getAttribute(atributo);
	                    String[] textoSeparado = retorno.split(";");
	                    String classe="";
	                    int lista = textoSeparado.length;	                    
	                    for (int j = 0; j < lista; j++) {	                    
	                    	classe += textoSeparado[j]+";";	                    	
	                    	if(j==0){String texto=nomeClasse=textoSeparado[j];}
	                    	else{
	                    		atributos+=textoSeparado[j]+";\n";
	                    		FileWriter arquivo;
	                    		arquivo = new FileWriter(new File(caminhoClasse+nomeClasse+".groovy"));
	                    		arquivo.write("Class "+nomeClasse+"{\n"+atributos+"}\n");
	                    		arquivo.close();}}
	                    System.out.println("Nome Classe:"+nomeClasse);
	                    System.out.println("Atributos:"+atributos);}}	            
	        } catch (ParserConfigurationException ex) {
	            Logger.getLogger(PrograminhasXMLDom.class.getName()).log(Level.SEVERE, null, ex);
	        } catch (SAXException ex) {
	            Logger.getLogger(PrograminhasXMLDom.class.getName()).log(Level.SEVERE, null, ex);
	        } catch (IOException ex) {
	            Logger.getLogger(PrograminhasXMLDom.class.getName()).log(Level.SEVERE, null, ex);
	        }
			return nomeClasse+" "+atributos;}
}
