package com.coderby.myapp.member.dao;

import java.util.List;

import com.coderby.myapp.member.model.Member;

public interface IAdminRepository {
	
	int getMemberCount();
	List<Member> selectAllMembers();

}
