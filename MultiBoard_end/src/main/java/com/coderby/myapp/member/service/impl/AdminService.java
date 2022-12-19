package com.coderby.myapp.member.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coderby.myapp.member.dao.IAdminRepository;
import com.coderby.myapp.member.model.Member;
import com.coderby.myapp.member.service.IAdminService;

@Service
public class AdminService implements IAdminService{
	
	@Autowired
	IAdminRepository adminDao; //어라 오토와이어드가 같은 계열이 아니라 직전꺼였구나..?!

	@Override
	public int getMemberCount() {
		return adminDao.getMemberCount();
	}

	@Override
	public List<Member> selectAllMembers() {
		return adminDao.selectAllMembers();
	}
}
