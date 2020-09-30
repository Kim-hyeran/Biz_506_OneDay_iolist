package com.biz.iolist.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.iolist.mapper.ProductDao;
import com.biz.iolist.model.ProductVO;

@Service("proServiceV1")
public class ProductServiceImplV1 implements ProductService {

	@Autowired
	private ProductDao proDao;
	
	@Override
	public List<ProductVO> selectAll() {		
		return proDao.selectAll();
	}

	@Override
	public ProductVO findById(long seq) {
		return proDao.findById(seq);
	}

	@Override
	public int insert(ProductVO vo) {
		return proDao.insert(vo);
	}

	@Override
	public int update(ProductVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(long seq) {
		// TODO Auto-generated method stub
		return 0;
	}

}
