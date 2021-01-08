package com.kh.jaba.client.cart.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.jaba.client.cart.model.domain.Cart;
import com.kh.jaba.client.order.model.domain.CustomCheck;

@Repository("cartDao")
public class CartDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int insertCart(Cart c) {
		return sqlSession.insert("Cart.insertCart", c);
	}
}