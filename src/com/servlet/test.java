package com.servlet;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.eclipse.jdt.internal.compiler.batch.Main;

public class test {
	public static void main(String[] args) {
		
		String day = new SimpleDateFormat("yyyy년 MM월 dd일").format(new Date());
		System.out.println(day);
		
	}
}
