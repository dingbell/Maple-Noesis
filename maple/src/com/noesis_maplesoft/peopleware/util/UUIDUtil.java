package com.noesis_maplesoft.peopleware.util;

import java.util.UUID;

public class UUIDUtil {
	private UUIDUtil() {}

	public static String getUUID() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
}
