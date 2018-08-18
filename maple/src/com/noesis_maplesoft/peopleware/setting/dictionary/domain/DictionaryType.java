package com.noesis_maplesoft.peopleware.setting.dictionary.domain;

/**
 * container for the data from table dictionary_type
 * 
 * @author chang
 *
 */
public class DictionaryType {
	private String code; 
	private String name; 
	private String description;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
