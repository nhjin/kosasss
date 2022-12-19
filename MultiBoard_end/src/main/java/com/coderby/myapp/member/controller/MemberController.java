package com.coderby.myapp.member.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.coderby.myapp.member.model.Member;
import com.coderby.myapp.member.service.IAdminService;
import com.coderby.myapp.member.service.IMemberService;

@Controller
public class MemberController {
	static final Logger logger = Logger.getLogger(MemberController.class);

	@Autowired
	IMemberService memberService;
	
	@Autowired
	IAdminService adminService;
	
	@RequestMapping("/test")
	public String playGame() {
		
//		int [] value = {1,2,3};
//		List board = new ArrayList();
//		board.add(value);
//		System.out.println(board.get(1));
		
		return "admin/playGame";
	}
	
	@RequestMapping("/test_request")
	public ModelAndView testRequset(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("jsonView");
		Map<String, Object> params = request.getParameterMap();
		System.out.println(params);
		System.out.println("foo값 확인" + params.get("foo"));
		System.out.println("test값 확인 : " + params.get("test"));
		String[] foo = (String[]) params.get("foo");
		String[] test = (String[]) params.get("test");
		System.out.println("foo[0]값 확인 : " + foo[0]); 
		System.out.println("test[0]값 확인 : " + test[0]); 
		
		//----------------------정보넘기기----------------------------
		//받아온 객체정보로 이제 무한 if문 돌려서 하자....어...이제 몰라...나도 ㅋㅋㅋㅋㅋㅋㅅㅂㅋㅋㅋㅋ 이따구로 하면 안된다는거 아는데 
		//안떠오르는걸 어떻게함 ㅠㅠㅠㅠㅠㅅㅄㅄㅄㅄㅄ
		//json의 객체를 한꺼번에 받아서 키값으로 받은 foo의 개수만큼 
//		
//		String [] board = {};
//		List updateBoard = new ArrayList();
//		
//		for (int i = 0; i < 9; i++) {
//		}
		return mv;
	}
	
	//관리자기능 
	@RequestMapping("/admin")
	public String adminPage() {
		System.out.println("얘는나오겠지");
		//System.out.println(memberService.selectAllMembers());
		return "admin/mainpage";
	}
	//총회원 수 및 목록 조회 
	@RequestMapping("/me/count")
	public String memberCount(Model model) {
		System.out.println("확인");
		model.addAttribute("count", adminService.getMemberCount());
		List<Member> member = adminService.selectAllMembers();
		System.out.println(member);
		model.addAttribute("memberlist", member);
		return "admin/count";
	}
	
	
	
	//회원기능
	@RequestMapping(value="/member/insert", method=RequestMethod.GET)
	public String joinForm() {
		return "member/form";
	}
	
	@RequestMapping(value="/member/insert", method=RequestMethod.POST)
	public String memberInsert(Member member, Model model, HttpSession session) {
		memberService.insertMember(member);
		session.invalidate();
		return "home";
	}
	
	@RequestMapping(value="/member/login", method=RequestMethod.GET)
	public String login() {
		return "member/login";
	}
	
	@RequestMapping(value="/member/login", method=RequestMethod.POST)
	public String login(String userid, String password, HttpSession session, Model model) {
		Member member = memberService.selectMember(userid);
		if(member != null) {
			String dbPassword = member.getPassword();
				if(dbPassword == null) {
				//아이디가 없음
				model.addAttribute("message", "NOT_VALID_USER");
			}else {
				//아이디 있음
				if(dbPassword.equals(password)) {
					//비밀번호 일치
					session.setAttribute("userid", userid);
					session.setAttribute("name", member.getName());
					session.setAttribute("email", member.getEmail());
						return "member/login";
				}else {
					//비밀번호 불일치
					model.addAttribute("message", "WRONG_PASSWORD");
				}
			}
		}else {
			model.addAttribute("message", "USER_NOT_FOUND");
		}
		session.invalidate();	
		return "member/login";
	}
	
	@RequestMapping(value="/member/logout", method=RequestMethod.GET)
	public String logout(HttpSession session, HttpServletRequest request) {
		session.invalidate(); //로그아웃
		return "home";
	}
	
	@RequestMapping(value="/member/update", method=RequestMethod.GET)
	public String updateMember(HttpSession session, Model model) {
		String userid = (String)session.getAttribute("userid");
		if(userid != null && !userid.equals("")) {
			Member member = memberService.selectMember(userid);
			model.addAttribute("member", member);
			model.addAttribute("message", "UPDATE_USER_INFO");
			return "member/update";
		}else {
			//userid가 세션에 없을 경우 (로그인 하지 않았을 경우)
			model.addAttribute("message", "NOT_LOGIN_USER");
			return "member/login";
		}
	}
	
	@RequestMapping(value="/member/update", method=RequestMethod.POST)
	public String updateMember(Member member, HttpSession session, Model model) {
		try{
			memberService.updateMember(member);
			model.addAttribute("message", "UPDATED_MEMBER_INFO");
			model.addAttribute("member", member);
			session.setAttribute("email", member.getEmail());
			return "member/login";
		}catch(Exception e){
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
			return "member/error";
		}
	}
	
	@RequestMapping(value="/member/delete", method=RequestMethod.GET)
	public String deleteMember(HttpSession session, Model model) {
		String userid = (String)session.getAttribute("userid");
		if(userid != null && !userid.equals("")) {
			Member member = memberService.selectMember(userid);
			model.addAttribute("member", member);
			model.addAttribute("message", "MEMBER_PW_RE");
			return "member/delete";
		}else {
			//userid가 세션에 없을 경우 (로그인 하지 않았을 경우)
			model.addAttribute("message", "NOT_LOGIN_USER");
			return "member/login";
		}
	}
	
	@RequestMapping(value="/member/delete", method=RequestMethod.POST)
	public String deleteMember(String password, HttpSession session, Model model) {
		try {
			Member member = new Member();
			member.setUserid((String)session.getAttribute("userid"));
			String dbpw = memberService.getPassword(member.getUserid());
			if(password != null && password.equals(dbpw)) {
				member.setPassword(password);
				memberService.deleteMember(member) ;
				session.invalidate();//삭제되었으면 로그아웃 처리
				return "member/login";
			}else {
				model.addAttribute("message", "WRONG_PASSWORD");
				return "member/delete";
			}
		}catch(Exception e){
			model.addAttribute("message", "DELETE_FAIL");
			e.printStackTrace();
			return "member/delete";
		}
	}
}

