package kr.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
// 	main - 요청 URL /
	@RequestMapping("/")
	public String main() {
		// return "main";
		return "index";
	}
	
	// 스타일 분석 페이지 이동
	@RequestMapping("/styleRoom.do")
	public String styleRoom() {
		return "style/styleRoom";
	}
	
	// 스타일 분석 결과 페이지 이동
		@RequestMapping("/styleRoomResult.do")
		public String styleRoom_Result() {
			return "style/styleRoomResult";
		}
	
	// 색깔 변환 페이지 이동
	@RequestMapping("/colorChange.do")
	public String colorChange() {
		return "style/colorChange";
	}
		
}
