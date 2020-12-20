package com.choi.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;

import com.choi.model.Product;
import com.choi.util.DBUtil;

public class ProductDao {

	private SqlSession sqlSession;
	
	public ProductDao() {
		sqlSession = DBUtil.getSqlSession();
	}
	
	public Product getProductInfo(@Param("url") String url) {
		Product product = sqlSession.selectOne("UserMapper.getProductInfo", url);
		return product;
	}
	
}
