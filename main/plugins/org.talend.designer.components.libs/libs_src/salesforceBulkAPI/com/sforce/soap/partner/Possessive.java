package com.sforce.soap.partner;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;

/**
 * Generated by SimpleTypeCodeGenerator.java. Please do not edit.
 */
public enum Possessive {


  
	/**
	 * Enumeration  : None
	 */
	None("None"),

  
	/**
	 * Enumeration  : First
	 */
	First("First"),

  
	/**
	 * Enumeration  : Second
	 */
	Second("Second"),

;

	public static Map<String, String> valuesToEnums;

	static {
   		valuesToEnums = new HashMap<String, String>();
   		for (Possessive e : EnumSet.allOf(Possessive.class)) {
   			valuesToEnums.put(e.toString(), e.name());
   		}
   	}

   	private String value;

   	private Possessive(String value) {
   		this.value = value;
   	}

   	@Override
   	public String toString() {
   		return value;
   	}
}
