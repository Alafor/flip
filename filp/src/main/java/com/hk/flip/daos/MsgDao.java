package com.hk.flip.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.flip.dtos.MsgDto;

@Repository
public class MsgDao implements IMsgDao{

	
	@Autowired
	private SqlSessionTemplate sqlsession;
	
	private String namespace = "com.hk.flip.Msg.";
	
	/*public int count_receive_note(String payload) {
		System.out.println("payload:"+payload);
		String msg_email = payload;
	 return sqlsession.selectOne(namespace+"count_receive"+msg_email);
	}*/
	
	@Override
	public CharSequence count_receive(String msg_email) {
		System.out.println("다오인데여기는 오냐?");
		System.out.println(msg_email);
		int result= sqlsession.selectOne(namespace+"count_receive",msg_email);			
		System.out.println("count_receive 맵퍼 결과값"+result);
		return Integer.toString(result);
	}

	@Override
	public List<MsgDto> getmsglist(String msg_email) {		
		return sqlsession.selectList(namespace+"getMsgList",msg_email);
	}
	@Override
	public int readConfirm(int msg_seq) {
		
		return sqlsession.update(namespace+"readConfirm",msg_seq);
	}

	@Override
	public MsgDto detailmsg(int msg_seq) {
		
		return sqlsession.selectOne(namespace+"msgDetail", msg_seq);
	}

	@Override
	public boolean muldelmsg(String[] seqs) {
		Map<String ,String[]>map = new HashMap<String,String[]>();
		map.put("seqs", seqs);
		int cnt=sqlsession.delete(namespace+"muldelMsg", map);
		return cnt>0?true:false;
	}




	

}
