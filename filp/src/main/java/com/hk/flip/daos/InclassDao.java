package com.hk.flip.daos;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.flip.dtos.ClassDto;
import com.hk.flip.dtos.InclassDto;
@Repository
public class InclassDao implements IInclassDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	String nameSpace = "com.hk.flip.Inclass.";
	
	public InclassDao() {
		// TODO Auto-generated constructor stub
	}
	////------------------------------------공통--------------------------------------------------------
		//수강신청전 인원 제한 검사
		@Override
		public boolean checkInclassNumber(int member_seq, int class_seq,String member_type) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("member_seq",Integer.toString(member_seq));
			map.put("class_seq", Integer.toString(class_seq));
			map.put("member_type", member_type);
			int rst = sqlSession.selectOne(nameSpace+"chkinclassmember", map);
			if(rst>0) {
				return true;
			}else {
				return false;
			}
		}
		
		//수강신청전 중복 검사
		@Override
		public boolean checkIsInclass(int member_seq, int class_seq) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("member_seq",Integer.toString(member_seq));
			map.put("class_seq", Integer.toString(class_seq));
			int rst = sqlSession.selectOne(nameSpace+"chkisinclass", map);
			if(rst==0) {
				return true;
			}else {
				return false;
			}
		}
		
		//수강신청 ,,, 강의 개설
		@Override
		public boolean addInclass(int member_seq,int class_seq) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("member_seq", Integer.toString(member_seq));
			map.put("class_seq", Integer.toString(class_seq));
			return sqlSession.insert(nameSpace+"insertinclass", map)>0?true:false;
		}
		
		//수강신청전 시간이 겹치는지 검사
		@Override
		public List<String> chkInclassTime_Join(int member_seq, int seq) {
			Map<String,String> map = new HashMap<String, String>();
			map.put("member_seq",Integer.toString(member_seq));
			map.put("seq",Integer.toString(seq));
			System.out.println("오라클 들어가는 chkInclassTime_Join값"+map);
			return sqlSession.selectList(nameSpace+"chkinclasstime_join",map);
		}
		
		//강의 개설전 시간이 겹치는지 검사
		@Override
		public List<String> chkInclassTime_Create(ClassDto dto) {
			System.out.println("chkInclassTime_Created의 dao dto = \n"+dto);
			return sqlSession.selectList(nameSpace+"chkinclasstime_create", dto);
		}
		
		//내수강 보기
		@Override
		public List<ClassDto> getAllMyInclass(int member_seq){
			List<ClassDto> list = sqlSession.selectList(nameSpace+"getinclasslist", member_seq);
			return list;
		}
		
		//수강 취소 
		@Override
		public boolean cancelInclass(int member_seq, int class_seq) {
			Map<String,String> map = new HashMap<String, String>();
			
			map.put("member_seqs",Integer.toString(member_seq));
			map.put("class_seqs",Integer.toString(class_seq));
			return sqlSession.delete(nameSpace+"delmyinclass", map)>0?true:false;
		}
	//------------------------------------학생전용	--------------------------------------------------------
	



	
		
		
			
	//------------------------------------강사전용	--------------------------------------------------------
		//강의 seq를 넣으면 강사의 seq가 나옴
		public ClassDto getClassDto(int member_seq,int class_seq){
		ClassDto dto = sqlSession.selectOne(nameSpace+"getinclasslist", class_seq);
		dto.setClass_member_seq(member_seq);
		return dto;
	}
	//-------------------------------내가 수강중인 강의보기
	@Override
	public List<InclassDto> myClass(int memberSeq) {
		return sqlSession.selectList(nameSpace+"myClass",memberSeq);
	}
	@Override
	public boolean deleteInclass(int seq, String email) {
		Map<String,String> map = new HashMap();
		map.put("email", email);
		map.put("seq", Integer.toString(seq));
		System.out.println("deleteInclass map::"+map);
		return sqlSession.delete(nameSpace+"deleteInclass",map)>0?true:false;
	}
	@Override
	public boolean deleteWishlist(int seq, String email) {
		Map<String,String> map = new HashMap();
		map.put("email", email);
		map.put("seq", Integer.toString(seq));
		System.out.println("deleteInclass map::"+map);
		return sqlSession.delete(nameSpace+"deleteWishlist",map)>0?true:false;
	}
	@Override
	public boolean setClassTermin(int seq, String termin) {
		Map<String,String> map = new HashMap();
		map.put("termin", termin);
		map.put("seq", Integer.toString(seq));
		System.out.println("deleteInclass map::"+map);
		return sqlSession.delete(nameSpace+"setClassTermin",map)>0?true:false;
	}
	
}
