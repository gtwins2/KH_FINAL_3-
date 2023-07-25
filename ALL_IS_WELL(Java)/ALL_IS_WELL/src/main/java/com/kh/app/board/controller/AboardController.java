package com.kh.app.board.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.app.board.service.InquiryService;
import com.kh.app.board.service.NoticeService;
import com.kh.app.board.service.SuggestService;
import com.kh.app.board.vo.InquiryVo;
import com.kh.app.board.vo.NoticeVo;
import com.kh.app.board.vo.SuggestVo;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("board")
@RequiredArgsConstructor
public class AboardController {

	private final NoticeService ns;
	private final SuggestService ss;
	private final InquiryService is;
	
	//�������׸��
	@GetMapping("noticeList")
	public String noticeList(NoticeVo vo, Model model) {
		List<NoticeVo> voList = ns.noticeList(vo);
		
		model.addAttribute("voList" ,voList);
		
		return "board/noticeList";
	}
	
//	@PostMapping("noticeList")
//	public String noticeList(NoticeVo vo, Model model) {
//		List<NoticeVo> voList = ns.noticeList(vo);
//		
//		model.addAttribute("voList" ,voList);
//		
//		return "board/noticeList";
//	}
	
	//�������� �ۼ��ϱ�
	@GetMapping("noticeWrite")
	public String noticeWrite() {
		return "board/noticeWrite";
	}
	
	//�������� �����ϱ�
	@GetMapping("noticeUpdate")
	public String noticeUpdate() {
		return "board/noticeUpdate";
	}
	
	//�������� ��������
	@GetMapping("noticeDetail")
	public String noticeDetail() {
		return "board/noticeDetail";
	}
	
	
	
	
	
	//���ǻ��� ���(������)
	@GetMapping("suggestList")
	public String suggestList(SuggestVo vo, Model model) {
		List<SuggestVo> voList = ss.suggestList(vo);
		
		model.addAttribute("voList" ,voList);
		
		return "board/suggestList";
	}
	
//	@PostMapping("suggestList")
//	public String suggestList(SuggestVo vo, Model model) {
//		List<SuggestVo> voList = ss.suggestList(vo);
//		
//		model.addAttribute("voList" ,voList);
//		
//		return "board/suggestList";
//	}
	
	//���ǻ��� ��������(����ۼ�)
	@GetMapping("suggestDetail")
	public String suggestDetail() {
		return "board/suggestDetail";
	}
	
	
	
	
	
	
	//���ǻ��� ���
	@GetMapping("inquiryList")
	public String inquiryList(InquiryVo vo, Model model) {
		List<InquiryVo> voList = is.inquiryList(vo);
		
		model.addAttribute("voList" ,voList);
		
		
		return "board/inquiryList";
	}
	
	//���ǻ��� ��������(�����ȸ)
	@GetMapping("inquiryDetail")
	public String inquiryDetail() {
		return "board/inquiryDetail";
	}
	
	
}
