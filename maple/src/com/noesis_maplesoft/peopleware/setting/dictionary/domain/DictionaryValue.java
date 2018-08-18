package com.noesis_maplesoft.peopleware.setting.dictionary.domain;

/**
 * Container for the data from table Dictionary_Value
 * 
 * @author chang
 *
 */
public class DictionaryValue {
	private String id;
	private String dicValue;
	private String value;
	private int orderNo;
	private String typeCode;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDicValue() {
		return dicValue;
	}

	public void setDicValue(String dicValue) {
		this.dicValue = dicValue;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public String getTypeCode() {
		return typeCode;
	}

	public void setTypeCode(String typeCode) {
		this.typeCode = typeCode;
	}

}
