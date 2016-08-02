package io.silver.the.bullet;


import java.io.StringReader;


import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;

import org.apache.axiom.om.OMElement;
import org.apache.synapse.MessageContext;
import org.apache.synapse.mediators.AbstractMediator;

public class BulkMediator extends AbstractMediator { 
	
 
	public boolean mediate(MessageContext context) { 
		
		OMElement element = (OMElement) context.getEnvelope().getBody().getFirstOMChild();
		
		Descriptor metadata = new Descriptor();
		
		try {
			
			JAXBContext jaxbContext = JAXBContext.newInstance(Descriptor.class);

			Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
			
			metadata = (Descriptor) jaxbUnmarshaller.unmarshal(new StringReader(element.toString()));
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	

		try {
			System.out.println("$$$$$$$$ SQL FROM:  " + metadata.getSourceDataSQL());
			System.out.println("$$$$$$$$ SQL TO:  " + metadata.getDestinationDataSQL());
			
			context.setProperty("metadata", metadata);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return true;
	}
}
