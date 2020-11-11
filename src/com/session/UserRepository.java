package com.session;

import java.util.ArrayList;
import java.util.List;

public class UserRepository {
	//DB가정
	private static List<User> userlist = new ArrayList<User>();

	public static List<User> getUserlist() {
		return userlist;
	}
	public static void setUser(User user) {
		userlist.add(user);
	}
	public static User getUser(String id) {
		
		for(User user : userlist){
			if(user.getId().equals(id)){
				return user;
			}
		}
		return null;
	}
	
	public static boolean deleteUser(User user) {
		return userlist.remove(user);
	}
	
}
