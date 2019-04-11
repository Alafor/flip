package com.hk.flip.daos;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.MemberDto;

@Repository
public class ClassWishlistDao implements IClassWishlistDao {

	@Autowired
	private SqlSessionTemplate sqlsession;
	
	String nameSpace = "com.hk.flip.ClassWishlist";
	
	public ClassWishlistDao() {
		// TODO Auto-generated constructor stub
	}
	
	public List<ClassDto> viewMyWishlist(String id) {
		List<ClassDto> list = new ArrayList();
		
		list = sqlsession.selectList(nameSpace+"selectallwishilst", id);
		return list;
	}
	
	public boolean insertWishlist(String id,String seq) {
		Map<String,String> map = new HashMap();
		map.put("id", id);
		map.put("seq", seq);
		return sqlsession.insert(nameSpace+"insertwishlist", map)>0?true:false;
	}

	//마감일이 3일이하 남은 위시리스트 출력
	public List<ClassDto> imminentWishlist(String id) {
		List<ClassDto> list = new ArrayList();
		list = sqlsession.selectList(nameSpace+"imminentwishlist", id);
		return list;
	}
	
	//
}
