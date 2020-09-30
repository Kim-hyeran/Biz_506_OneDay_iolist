package com.biz.iolist.controller;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.iolist.model.ProductVO;
import com.biz.iolist.service.ProductService;

@Controller
@RequestMapping(value="/product")
public class ProductController {
	
	@Autowired
	//private ProductDao proDao;
	@Qualifier("proServiceV1")
	private ProductService proService;
	
	@RequestMapping(value={"/", ""}, method=RequestMethod.GET)
	public String Home(Model model) {
		List<ProductVO> proList=proService.selectAll();
		
		model.addAttribute("PRO_LIST", proList);
		model.addAttribute("BODY", "PRO_HOME");
		
		return "home";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public String insert(@ModelAttribute("PRO_VO") ProductVO proVO, Model model) {
		LocalDate localDate=LocalDate.now();
		LocalTime localTime=LocalTime.now();
		
		DateTimeFormatter date=DateTimeFormatter.ofPattern("yyyy-MM-dd");
		DateTimeFormatter time=DateTimeFormatter.ofPattern("hh:mm:ss");
		
		proVO.setIo_date(localDate.format(date).toString());
		proVO.setIo_time(localTime.format(time).toString());
		
		model.addAttribute("BODY", "PRO_WRITE");
		model.addAttribute("PRO_VO", proVO);
		
		return "home";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public String insert(@ModelAttribute("PRO_VO") ProductVO proVO) {	
		int ret=proService.insert(proVO);
		
		if(ret<1) {
		}
		
		return "home";
	}
	
	@RequestMapping(value="/detail", method=RequestMethod.GET)
	public String detail(ProductVO proVO, Model model) {
		
		model.addAttribute("BODY", "PRO_DETAIL");
		
		return "home";
	}
	
	/*
	@RequestMapping(value="/detail", method=RequestMethod.GET)
	public String detail(@RequestParam("id") String io_seq, Model model) {
		ProductVO proVO=proDao.findById(Long.valueOf(io_seq));
		
		model.addAttribute("PRO_VO", proVO);
		model.addAttribute("BODY", "PRO_DETAIL");
		
		return "home";
	}
	*/

}
