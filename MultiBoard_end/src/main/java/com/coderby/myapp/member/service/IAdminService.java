package com.coderby.myapp.member.service;

import java.util.List;

import com.coderby.myapp.member.model.Member;

public interface IAdminService {
	
	int getMemberCount();
	List<Member> selectAllMembers();

}
