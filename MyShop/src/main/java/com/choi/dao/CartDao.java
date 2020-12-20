package com.choi.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;

import com.choi.model.Cart;
import com.choi.util.DBUtil;

public class CartDao {
	
	private SqlSession sqlSession;
	
	public CartDao() {
		sqlSession = DBUtil.getSqlSession();
	}
	
	public Cart setUserInfo(@Param("id") String id) {
		Cart cart = sqlSession.selectOne("UserMapper.getProductInfo", id);
		return cart;
	}
	
	public int countCart(@Param("p_id") int p_id, @Param("id") String id) {
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("p_id", p_id);
		map.put("id", id);
		return sqlSession.selectOne("UserMapper.countCart", map);
	}
	
	public void updateCart(Cart cart) {
		sqlSession.update("UserMapper.updateCart", cart);
	}
	
	public void insertCart(Cart cart) {
		sqlSession.insert("UserMapper.insertCart", cart);
	}
	
	public List<Cart> listCart(){
		List<Cart> cart = sqlSession.selectList("UserMapper.listCart");
		return cart;
	}
}
