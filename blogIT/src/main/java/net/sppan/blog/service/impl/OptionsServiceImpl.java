package net.sppan.blog.service.impl;

import net.sppan.blog.entity.Options;
import net.sppan.blog.repository.OptionsRepository;
import net.sppan.blog.service.OptionsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import java.util.List;

@Service
public class OptionsServiceImpl implements OptionsService{
	
	public final String SITEABOUTMEKEY = "siteAboutMe";
	public final String SITENAMEKEY = "siteName";
	public final String SITEDESCRIPTIONKEY = "siteDescription";
	public final String SITEDOMAINKEY = "siteDomain";
	public final String SITECHANGYANAPPID = "siteChangyanAppId";
	
	@Resource
	private ServletContext servletContext;
	
	@Resource
	private OptionsRepository optionsRepository;

	@Override
	public List<Options> findAll() {
		return optionsRepository.findAll();
	}

	@Override
	public void saveAboutMe(String content) {
		Options about = optionsRepository.findByOptionKey(SITEABOUTMEKEY);
		about.setOptionValue(content);
		optionsRepository.save(about);
		
		servletContext.setAttribute(about.getOptionKey(), about.getOptionValue());
	}
}
