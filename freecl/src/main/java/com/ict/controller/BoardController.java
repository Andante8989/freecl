package com.ict.controller;

import java.util.HashMap;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ict.persistent.BoardVO;
import com.ict.persistent.BuyVO;
import com.ict.persistent.CartVO;
import com.ict.persistent.ColorVO;
import com.ict.persistent.NoticeVO;
import com.ict.persistent.SizeVO;
import com.ict.service.BoardService;
import com.ict.service.BuyService;
import com.ict.service.CartService;
import com.ict.service.ColorService;
import com.ict.service.NoticeService;
import com.ict.service.SizeService;


import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value="/board")
public class BoardController {
	
	@Autowired
	private NoticeService service;
	
	@Autowired
	private BoardService service1;
	
	@Autowired
	private ColorService service2;
	
	@Autowired
	private SizeService service3;
	
	@Autowired
	private CartService service4;
	
	@Autowired
	private BuyService service5;
	
	
	
	// 상품 디테일 화면 연결
	@GetMapping(value="/detail")
	public String getProductDetail(Long boardNum, Model model) {
		BoardVO board = service1.getListDetail(boardNum);
		List<ColorVO> color = service2.getListDetail(boardNum);
		List<SizeVO> size = service3.getListDetail(boardNum);
		model.addAttribute("board", board);
		model.addAttribute("color", color);
		model.addAttribute("size", size);
		return "board/productDetail";
	}

	// 고객센터 페이지 연결
	@GetMapping(value="/customerCenter")
	public String customerCenter() {
		
		return "/board/customerCenter";
	}
	//////////////////////// 공지사항 게시판 관련 컨트롤러 /////////////////////////////////
	@GetMapping(value="/notice")
	public String notice(Model model) {
		List<NoticeVO> noticeList = service.getList();
		model.addAttribute("noticeList", noticeList);
		return "/board/notice";
	}
	
	@GetMapping(value="noticeDetail")
	public String noticeDetail(Long nt_num, Model model) {
		NoticeVO notice = service.getListDetail(nt_num);
		model.addAttribute("notice", notice);
		return "/board/noticeDetail";
	}
	
	@GetMapping(value="noticeInsertForm")
	public String noticeInsertForm() {
		return "/board/noticeInsertForm";
	}
	
	@PostMapping(value="noticeInsert")
	public String noticeInsert(NoticeVO notice) {
		service.noticeInsert(notice);
		return "redirect:/board/notice";
	}
	
	@PostMapping(value="noticeDelete")
	public String noticeDelete(Long nt_num) {
		service.noticeDelete(nt_num);
		return "redirect:/board/notice";
	}
	
	@PostMapping(value="noticeUpdateForm")
	public String noticeUpdateForm(Long nt_num, Model model) {
		NoticeVO notice = service.getListDetail(nt_num);
		model.addAttribute("notice", notice);
		return "/board/noticeUpdateForm";
	}
	
	@PostMapping(value="noticeUpdate")
	public String noticeUpdate(NoticeVO notice) {
		service.noticeUpdate(notice);
		return "redirect:/board/noticeDetail?nt_num=" + notice.getNt_num();
	}
	/////////////////////////////////////////////////////////////////////////////////
	
	
	// 장바구니로 이동
	@GetMapping(value="basket")
	public String basket(String userId, CartVO cart, Long cart_proNum, Model model) {
		log.info("장바구니로 가기전 cartId 조회 : " + userId);
		//상품의 색상과 사이즈 데이터

		log.info("insert전 cart 조회 : " + cart);
		// 장바구니테이블에 insert 후 데이터 뿌리기
		service4.cartInsert(cart);
		log.info("insert된 cart 조회 : " + cart);
		List<CartVO> cartList = service4.getList(userId);
		model.addAttribute("cartList", cartList);
		model.addAttribute("userId", userId);
		
		return "/board/basket";
	}
	
	// 장바구니에서 삭제버튼 클릭시 비동기 처리
	@ResponseBody
	@DeleteMapping(value="/{cartNum}",
					produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(@PathVariable("cartNum") Long cartNum) {
		
		ResponseEntity<String> entity = null;
		
		try {
			service4.cartDelete(cartNum);
			entity = new ResponseEntity<String>(
					"SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>(
					e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	// 장바구니 화면에 장바구니 db 출력
	@ResponseBody
	@GetMapping(value="/all/{userId}",
					produces = {MediaType.APPLICATION_XML_VALUE,
							    MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<CartVO>> list (@PathVariable String userId) {
		
		ResponseEntity<List<CartVO>> entity = null;
		
		try {
			entity = new ResponseEntity<>(service4.getList(userId), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@ResponseBody
	@PostMapping(value="", consumes="appincation/json",
							produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> register(@RequestBody CartVO vo) {
		
		ResponseEntity<String> entity = null;
		
		try {
			service4.cartInsert(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	
	
	//////////////////////////////////////////////////////////////////////////////////
	////////////////////////  상품 결제 관련 /////////////////////////////////////////////
	///////////////////////////////////////////////////////////////////////////////////
	
	@PostMapping("/buy")
	public String insertBuy(String toPrice, Model model, String toColor, String toSize, String proName) {
		log.info("결제할 금액 : " + toPrice);
		log.info("결제할 옷의 색상 : " + toColor);
		log.info("결제할 옷의 사이즈 : " + toSize);
		model.addAttribute("price", toPrice);
		model.addAttribute("color", toColor);
		model.addAttribute("size", toSize);
		model.addAttribute("product", proName);
		return "/pay";
	}
	
	@ResponseBody
	@PostMapping(value="/order", consumes="application/json",
								produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> orderInsert(@RequestBody BuyVO vo) {
		log.info("vo검증 : " + vo);
		service5.insertBuy(vo);
		return new ResponseEntity<String> ("success", HttpStatus.OK);
	}
	
	
	//////////////////////////////////////////////////////////////////////////////
	
	
}
