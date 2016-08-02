package io.silver.the.bullet;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Descriptor {
	
	public From getFrom() {
		return from;
	}
	public void setFrom(From from) {
		this.from = from;
	}
	public To getTo() {
		return to;
	}
	public void setTo(To to) {
		this.to = to;
	}
	private From from;
	private To to;
	
	@Override
	public String toString() {
		return "BulkerMetadata [from=" + from + ", to=" + to + "]";
	}
	
     public String getSourceDataSQL() {
		
		StringBuffer sql = new StringBuffer();
		
		sql.append("SELECT ");
		
		int numFields = 0;
		for (Field entry : getFrom().getFields() ) {
			++numFields;
			if (numFields<getFrom().getFields().size())
			sql.append(entry.getName() + ",");
			else {
				sql.append(entry.getName()+ " ");
				
			}
		}
		
		sql.append("FROM " + getFrom().getObject() + " ");
		
	    if (null != getFrom().getWhereClause() ) { 
		
		sql.append("WHERE " + getFrom().getWhereClause());
		
	    }
		
		return sql.toString();
	}
     
     public String getDestinationDataSQL() {
 		
 		StringBuffer sql = new StringBuffer();
 		
 		sql.append("SELECT ");
 		
 		int numFields = 0;
 		for (Field entry : getFrom().getFields() ) {
 			++numFields;
 			if (numFields<getFrom().getFields().size())
 			sql.append(entry.getName() + ",");
 			else {
 				sql.append(entry.getName()+ " ");
 				
 			}
 		}
 		
 		sql.append("FROM " + getFrom().getObject() + " ");
 		
 	    if (null != getFrom().getWhereClause() ) { 
 		
 		sql.append("WHERE " + getFrom().getWhereClause());
 		
 	    }
 		
 		return sql.toString();
 	}  

	

}
