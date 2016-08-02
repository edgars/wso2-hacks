package io.silver.the.bullet.bulker;

import java.util.ArrayList;
import java.util.List;


import javax.xml.bind.JAXBContext;
import javax.xml.bind.util.JAXBSource;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;



public class Runner {

	public static void main(String[] args) throws Exception {
		
		
		Descriptor md = new Descriptor();
		
		From from = new From();
		from.setDriverClass("com.mysq.jdbc.Driver");
		from.setUrl("jdbc:mysql://localhost:3306/northwind");
		from.setUser("root");
		from.setPassword("mysql");
		from.setObject("categories");
		
		List<Field> fields = new ArrayList<Field>();
		
		fields.add(new Field("CategoryID", "Integer"));
		fields.add(new Field("Name", "String"));
		fields.add(new Field("Description", "Integer"));	
		
		from.setFields(fields);

		
		To to = new To();
		
		to.setDriverClass("com.mysq.jdbc.Driver");
		to.setUrl("jdbc:mysql://localhost:3306/northwind");
		to.setObject("categories2");
		to.setUser("root");
		to.setPassword("mysql");
		
		to.setFields(fields);
		
		md.setFrom(from);
		md.setTo(to);
		
		   System.out.println("GET SQL : " + md.getFromSQL());
		
	
		
		   // jaxbContext is a JAXBContext object from which 'o' is created.
		
		   JAXBContext jaxbContext = JAXBContext.newInstance(Descriptor.class);
		
	       JAXBSource source = new JAXBSource( jaxbContext, md);

	       // set up XSLT transformation
	       TransformerFactory tf = TransformerFactory.newInstance();
	       Transformer t = tf.newTransformer();
	       
	       
	       
          // run transformation
	       t.transform(source,new StreamResult(System.out));
	       
	    
	       
	       
		
	
		
		
	
		
	}

}
