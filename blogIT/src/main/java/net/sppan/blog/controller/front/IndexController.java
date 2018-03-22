package net.sppan.blog.controller.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("/")
	public String index() {
		return "redirect:/b/index";
	}

	@RequestMapping("/talk")
	public String talk() {
		return "front/talk/index";
	}

	@RequestMapping("/resource")
	public String resource() {
		return "redirect:/resource/index";
	}

	@RequestMapping("/interview")
	public String interview() {
		return "front/interview/index";
	}

	@RequestMapping("/about")
	public String about() {
		return "front/about/index";
	}
}
