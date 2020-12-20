package com.choi.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;

import com.choi.model.User;
import com.choi.util.DBUtil;

public class UserDao {

	private SqlSession sqlSession;
	
	public UserDao() {
		sqlSession = DBUtil.getSqlSession();
	}
	

	public String getUserByID(@Param("id") String id) {
		String user = sqlSession.selectOne("UserMapper.getUserbyId", id);		
		return user;
	}
	
	public void insertUser(User user) {
		sqlSession.insert("UserMapper.insertUser", user);
	}
	
	public User getUserInfo(@Param("id") String id) {
		User user = sqlSession.selectOne("UserMapper.getUserInfo", id);
		return user;
	}
	
	public void updateUserInfo(User user) {
		sqlSession.update("UserMapper.updateUserInfo",user);
	}
	
	public void deleteUserInfo(@Param("id") String id) {
		sqlSession.delete("UserMapper.deleteUserInfo",id);
	}
	
	public List<User> listUser() {
		List<User> list = sqlSession.selectList("UserMapper.listUser");
		return list;
	}	
	
}