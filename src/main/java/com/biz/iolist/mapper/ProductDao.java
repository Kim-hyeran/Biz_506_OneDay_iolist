package com.biz.iolist.mapper;

import java.util.List;

import com.biz.iolist.model.ProductVO;

public interface ProductDao {
	
	public List<ProductVO> selectAll();
	public ProductVO findById(long seq);
	public int insert(ProductVO proVO);
	public int update(ProductVO proVO);
	public int delete(long seq);

}
