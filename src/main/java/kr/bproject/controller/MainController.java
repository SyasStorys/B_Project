package kr.bproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/*")
public class MainController {

	@RequestMapping(value = { "index.ino", "home.ino" })
	public String page() {
		return "page";
	}
	
}
