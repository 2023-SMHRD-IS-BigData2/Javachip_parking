package model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.SqlSessionManager;
import model.MEMBER;

public class MEMBER_DAO {
	
	//세션을 생성해 줄 수 있는 Factory 생성
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		
	//connection, close, sql문 실행...
	SqlSession sqlSession = sqlSessionFactory.openSession(true);
	
	public int joinMember(MEMBER vo) {
		int cnt = 0;

		try {
			cnt = sqlSession.insert("database.MEMBER_mapper.joinMember", vo);
		} catch (Exception e) {

		} finally {
			sqlSession.close();
		}

		return cnt;
	}
	
	public MEMBER loginMember(MEMBER vo) {
		MEMBER loginMember = null;
		try {
			loginMember = sqlSession.selectOne("database.MEMBER_mapper.loginMember", vo);
		} catch (Exception e) {

		} finally {
			sqlSession.close();
		}
		return loginMember;
	}

	
}