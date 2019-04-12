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
	}
	
	//위시리스트 조회 
	@Override
	public List<ClassDto> viewMyWishlist(String id) {
		List<ClassDto> list = new ArrayList();
		list = sqlsession.selectList(nameSpace+"selectallwishilst", id);
		return list;
	}
	
	//위시리스트 삭제
	@Override
	public boolean delWishlist(String[] seqs,String id) {
		Map<String,String[]> map = new HashMap<String, String[]>();
		map.put("seqs", seqs);
		String ids[] = {id};
		map.put(id, ids);
		return sqlsession.delete(nameSpace+"delwishlist", map)>0?true:false;
	}
	
	
	//위시리스트 추가 ++++++위시리스트 중복검사 필수
	@Override
	public boolean insertWishlist(String id,int seq) {//아이디 , 수업 seq
		Map<String,String> map = new HashMap();
		map.put("id", id);
		map.put("seq", Integer.toString(seq));
		return sqlsession.insert(nameSpace+"insertwishlist", map)>0?true:false;
	}
	
	//위시리스트 중복검사 중복시 true
	@Override
	public boolean cheakWishlist(String id,int seq) {//아이디 , 수업 seq
		Map<String,String> map = new HashMap();
		map.put("id", id);
		map.put("seq", Integer.toString(seq));
		int result = sqlsession.selectOne(nameSpace+"cheakwishlist", map);
		return result>0?true:false;
	}

	//마감일이 3일이하 남은 위시리스트 출력
	@Override
	public List<ClassDto> imminentWishlist(String id) {
		List<ClassDto> list = new ArrayList();
		list = sqlsession.selectList(nameSpace+"imminentwishlist", id);
		return list;
	}
	
	//

	
	
}
