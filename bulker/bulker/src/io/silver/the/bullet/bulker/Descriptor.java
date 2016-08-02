package io.silver.the.bullet.bulker;



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
	
public String getFromSQL() {
		
		StringBuffer sql = new StringBuffer();
		
		sql.append("SELECT ");
		
		int numFields = 0;
		for (io.silver.the.bullet.bulker.Field entry : getFrom().getFields() ) {
			++numFields;
			if (numFields<getFrom().getFields().size())
			sql.append(entry.getName() + ",");
			else {
				sql.append(entry.getName()+ " ");
				
			}
		}
		

		
		
		sql.append("FROM " + getFrom().getObject() + " ");
		
	
		
		sql.append("WHERE " + getFrom().getWhereClause());
		
		return sql.toString();
	}

}
