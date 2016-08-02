package io.silver.the.bullet.bulker;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Field {
	
	private String name;
	private String type;
	private String formatter;
	private Object value;
	private String lookupFieldSourceName;
	private boolean primaryKey;

	

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getFormatter() {
		return formatter;
	}
	public void setFormatter(String formatter) {
		this.formatter = formatter;
	}
	public Object getValue() {
		return value;
	}
	public void setValue(Object value) {
		this.value = value;
	}

	
	public Field() {
		// TODO Auto-generated constructor stub
	}
	public Field(String name, String type) {
		super();
		this.name = name;
		this.type = type;
	}
	
	public Field(String name, String type, String lookupFieldSourceName ) {
		super();
		this.name = name;
		this.type = type;
		this.lookupFieldSourceName = lookupFieldSourceName;
	}
	public String getLookupFieldSourceName() {
		return lookupFieldSourceName;
	}
	public void setLookupFieldSourceName(String lookupFieldSourceName) {
		this.lookupFieldSourceName = lookupFieldSourceName;
	}
	public boolean isPrimaryKey() {
		return primaryKey;
	}
	public void setPrimaryKey(boolean primaryKey) {
		this.primaryKey = primaryKey;
	}
	
	
	
}
