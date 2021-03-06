package com.fp.twt.dao;

import java.util.List;

import com.fp.twt.vo.AnswerVo;
import com.fp.twt.vo.ScheduleReviewVo;
import com.fp.twt.vo.TravelScheduleVo;

public interface CommunityDao {
	String NAMESPACE = "twt.";
	//용훈
	
	public int potoBookInsert(ScheduleReviewVo vo);	
	public List<ScheduleReviewVo> potoBookList();
	public ScheduleReviewVo potoOne(String sr_Code);
	public int potoBookUpdate(ScheduleReviewVo vo);
	public int potoBookDelete(String sr_Code);
	public int ansInsert(AnswerVo vo);
	public List<AnswerVo> ansList(String sr_Code);
	
	
	
	
	//--------------------------------------------------------------------------------------------------//
	
	//도영

	public List<TravelScheduleVo> selectList_D();
	public List<TravelScheduleVo> PselectList_D();
	public TravelScheduleVo selectOne_D(String ts_code);
	public List<TravelScheduleVo> detailList_D(String ts_code);
	public List<TravelScheduleVo> themeList(String ts_theme);

	
	
	
	

}
