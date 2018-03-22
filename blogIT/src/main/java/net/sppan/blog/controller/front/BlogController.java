package net.sppan.blog.controller.front;

import javax.annotation.Resource;

import net.sppan.blog.common.Constants;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.sppan.blog.entity.Blog;
import net.sppan.blog.service.BlogService;

@Controller
@RequestMapping("/b")
public class BlogController {

    @Resource
    private BlogService blogService;

    @RequestMapping("/index")
    public String index(@RequestParam(required = false, defaultValue = "1") Integer p, ModelMap map) {
        PageRequest pageRequest = new PageRequest(p - 1, Constants.PAGE_SIZE);
        Page<Blog> page = blogService.findByPrivacy(0, pageRequest);
        map.put("page", page);
        return "front/blog/index";
    }

    @RequestMapping("/view/{id}")
    public String view(
            @PathVariable("id") Long id,
            ModelMap map
    ) {
        Blog blog = blogService.findById(id);
        map.put("blog", blog);
        return "front/blog/detail";
    }
}
