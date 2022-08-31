package site.meatacoding.yellow.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import site.meatacoding.yellow.domain.Board;

@Controller //보드테이블의 데이터를 뷰에 줘
public class BoardController {
	@GetMapping("/board")
	public String getBoard(Model model) {
		// 더미 데이터 만들기(가짜데이터)
		List<Board> boardList = new ArrayList<>();
		boardList.add(new Board(1, "스프링 1강", "컨트룰러 배우기"));
		boardList.add(new Board(2, "스프링 2강", "탬플릿 엔진 배우기"));
		boardList.add(new Board(3, "스프링 3강", "db연결하기")); // 원래는 이걸 db에서 들고 와야 함
		model.addAttribute("boards", boardList);
		return "board/list";
	}
	
	@GetMapping("/board/{id}") // 한 건 보기
	public String asdff(@PathVariable Integer id, Model model) { // 메서드 명은 대충 해도 됨
		// 더미 데이터(가짜)
		List<Board> boardList = new ArrayList<>();
		boardList.add(new Board(1, "스프링 1강", "컨트룰러 배우기"));
		boardList.add(new Board(2, "스프링 2강", "탬플릿 엔진 배우기"));
		boardList.add(new Board(3, "스프링 3강", "db연결하기"));
		if(id==1) {
			model.addAttribute("board", new Board(1, "스프링 1강", "컨트룰러 배우기"));
		}
		if(id==2) {
			model.addAttribute("board", boardList.get(1));
		}
		if(id==3) {
			model.addAttribute("board", boardList.get(2));
		}
		
		return "board/detail";
	}
}
