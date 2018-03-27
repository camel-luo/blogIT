package net.sppan.blog.config;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;

import net.sppan.blog.directive.BlogDirective;
import net.sppan.blog.directive.CategoryDirective;
import net.sppan.blog.directive.TagDirective;

@Configuration
public class FreeMarkerConfig {

    /**
     * Adds shared variable to the configuration; It uses Configurable.getObjectWrapper() to wrap the value, so it's important that the object wrapper is set before this.
     */
    @Autowired
    private freemarker.template.Configuration configuration;
    
    @Resource
    private CategoryDirective categoryDirective;
    @Resource
    private BlogDirective blogDirective;
    @Resource
    private TagDirective tagDirective;

    @PostConstruct
    public void setSharedVariable() {
    	try {
			configuration.setSharedVariable("categoryList", categoryDirective);
			configuration.setSharedVariable("blogList", blogDirective);
			configuration.setSharedVariable("tagList", tagDirective);
		} catch (Exception e) {
			e.printStackTrace();
		}
    }
}
