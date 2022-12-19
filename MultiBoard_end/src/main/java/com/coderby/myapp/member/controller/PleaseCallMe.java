package com.coderby.myapp.member.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class PleaseCallMe {

	public static void main(String[] args) {
		System.out.println("start ");

		Scanner sc = new Scanner(System.in);
		String text = sc.nextLine();
		List textList = new ArrayList();
		
		if(!text.matches(".*[0-9].*")) {
			String[] str = text.split(" ");
			for (int i = 0; i < str.length; i++) {
				System.out.println(i + 1 + "번째");
				for (int j = 0; j < str[i].length(); j++) {
					String[] strs = str[i].split("");
					
					System.out.println("1, i : " + strs[i]);
					System.out.println("1, length : " + strs[strs.length -1 -i]);
					
					String temp = strs[i];
					strs[i]= strs[strs.length -1- i] ;
					strs[strs.length -1 - i] = temp;
					
					System.out.println("자리바뀐후 ");
					System.out.println("2, i : " + strs[i]);
					System.out.println("2, length : " + strs[strs.length-1 - i]);
					
				}
			}		
		}
	}

}
