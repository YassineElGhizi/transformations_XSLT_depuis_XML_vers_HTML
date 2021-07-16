

import java.io.File;

import javax.xml.XMLConstants;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

public class Test {

	public static void main(String[] args) throws TransformerException {
		
		String pathxml = "players.xml";
		String pathxslt = "trans.xsl";
		String pathhtml = "atelier2.html";
		
		Source xslt = new StreamSource(new File(pathxslt));
        Source xml  = new StreamSource(new File(pathxml));
        Result out  = new StreamResult(new File(pathhtml));

        TransformerFactory factory = TransformerFactory.newInstance();
        factory.setAttribute(XMLConstants.ACCESS_EXTERNAL_DTD, "");
        factory.setAttribute(XMLConstants.ACCESS_EXTERNAL_STYLESHEET, "");

        Transformer transformer = factory.newTransformer(xslt);
        transformer.transform(xml, out);

	}

}
