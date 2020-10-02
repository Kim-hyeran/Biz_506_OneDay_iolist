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
import org.springframework.web.bind.annotation.RequestParam;

import com.biz.iolist.model.ProductVO;
import com.biz.iolist.service.ProductService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
//@RequestMapping(value="/")
public class ProductController {
	
	@Autowired
	@Qualifier("proServiceV1")
	private ProductService proService;
	
	@RequestMapping(value={"/", ""}, method=RequestMethod.GET)
	public String home(Model model) {
		List<ProductVO> proList=proService.selectAll();
		
		proList=ioprice(proList);
		
		model.addAttribute("PRO_LIST", proList);
		model.addAttribute("BODY", "PRO_LIST");
		
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
			log.debug("데이터를 추가하는 데 실패했습니다.");
		}
		
		return "redirect:/";
	}
	
	@RequestMapping(value="/detail", method=RequestMethod.GET)
	public String detail(@RequestParam("id") String io_seq, Model model) {
		ProductVO proVO=proService.findById(Long.valueOf(io_seq));
		
		model.addAttribute("PRO_VO", proVO);
		model.addAttribute("BODY", "PRO_DETAIL");
		
		return "home";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.GET)
	public String update(@RequestParam("id") String io_seq, ProductVO proVO, Model model) {
		proVO=proService.findById(Long.valueOf(io_seq));
		
		model.addAttribute("PRO_VO", proVO);
		model.addAttribute("BODY", "PRO_WRITE");
		
		return "home";
	}
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String update(@ModelAttribute ProductVO proVO, Model model) {
		int ret=proService.update(proVO);
		
		if(ret<1) {
			log.debug("데이터를 수정하는 데 실패했습니다.");
		}
		
		return "redirect:/";
	
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String delete(@RequestParam("id") String io_seq) {
        proService.delete(Long.valueOf(io_seq));
        
        return "redirect:/";
    }
	
	public List<ProductVO> ioprice(List<ProductVO> proList) {

		for (ProductVO proVO : proList) {
			if(proVO.getIo_input()==1) {
				proVO.setIo_iprice(proVO.getIo_price());
			} else if(proVO.getIo_input()==2) {
				proVO.setIo_oprice(proVO.getIo_price());
			}
		}
		
		return proList;
	}
}
