package com.fp.twt.vo;

import java.util.Date;

public class TravelScheduleVo {

    private String ts_Code; 		//여행일정 번호
    private String m_Code; 		//회원 번호
    private String tp_Code; 		//여행지 번호
    private String ts_Title; 	//일정 제목
    private Date ts_Sday; 		//일정 출발일
    private String ts_Theme; 	//일정 테마
    private String ts_People; 	//일정 인원
    private String ts_Thum; 		//일정 썸네일
    private int ts_Period; 		//일정 기간
    private String ts_View; 		//일정 조회수
    private Date ts_Date;		// 게시글 작성 시간
    private String m_Id;		// 유저 아이디
    private String ts_Day;		//일정 날짜
    private String tp_Type;		//여행지타입
    private String tp_Content;	//여행지설명
    private String tp_Name;		//여행지 이름
    private String ts_Memo;		//일정 메모
    private String m_Name;		//회원이름
    private String tp_Img;		//여행이미지
    private String city_Code;	//도시 번호

    public TravelScheduleVo() {
		super();
	}

	public TravelScheduleVo(String ts_Code, String m_Code, String tp_Code, String ts_Title, Date ts_Sday, String ts_Theme,
			String ts_People, String ts_Thum, int ts_Period, String ts_View, Date ts_Date, String m_Id, String ts_Day, 
			String tp_Type, String tp_Content, String tp_Name, String ts_Memo, String m_Name, String tp_Img, String city_Code) {
		super();
		this.ts_Code = ts_Code;
		this.m_Code = m_Code;
		this.tp_Code = tp_Code;
		this.ts_Title = ts_Title;
		this.ts_Sday = ts_Sday;
		this.ts_Theme = ts_Theme;
		this.ts_People = ts_People;
		this.ts_Thum = ts_Thum;
		this.ts_Period = ts_Period;
		this.ts_View = ts_View;
		this.ts_Date = ts_Date;
		this.m_Id = m_Id;
		this.ts_Day = ts_Day;
		this.tp_Type = tp_Type;
		this.tp_Content = tp_Content;
		this.tp_Name = tp_Name;
		this.ts_Memo = ts_Memo;
		this.m_Name = m_Name;
		this.tp_Img = tp_Img;
		this.city_Code = city_Code;
	}
	
	
	
	public String getCity_Code() {
		return city_Code;
	}

	public void setCity_Code(String city_Code) {
		this.city_Code = city_Code;
	}

	public String getTp_Img() {
		return tp_Img;
	}

	public void setTp_Img(String tp_Img) {
		this.tp_Img = tp_Img;
	}

	public String getM_Name() {
		return m_Name;
	}

	public void setM_Name(String m_Name) {
		this.m_Name = m_Name;
	}

	public String getTs_Memo() {
		return ts_Memo;
	}

	public void setTs_Memo(String ts_Memo) {
		this.ts_Memo = ts_Memo;
	}

	public String getTp_Name() {
		return tp_Name;
	}

	public void setTp_Name(String tp_Name) {
		this.tp_Name = tp_Name;
	}

	public String getTp_Type() {
		return tp_Type;
	}

	public void setTp_Type(String tp_Type) {
		this.tp_Type = tp_Type;
	}

	public String getTp_Content() {
		return tp_Content;
	}

	public void setTp_Content(String tp_Content) {
		this.tp_Content = tp_Content;
	}

	public String getTs_Day() {
		return ts_Day;
	}

	public void setTs_Day(String ts_Day) {
		this.ts_Day = ts_Day;
	}

	public Date getTs_Date() {
		return ts_Date;
	}

	public void setTs_Date(Date ts_Date) {
		this.ts_Date = ts_Date;
	}

	public String getM_Id() {
		return m_Id;
	}

	public void setM_Id(String m_Id) {
		this.m_Id = m_Id;
	}

	// 조회수 사용
	public TravelScheduleVo(String ts_Code, String ts_View) {
		super();
		this.ts_Code = ts_Code;
		this.ts_View = ts_View;
	}

	public String getts_Code() {
        return ts_Code;
    }

    public void setts_Code(String ts_Code) {
        this.ts_Code = ts_Code;
    }

    public String getm_Code() {
        return m_Code;
    }

    public void setm_Code(String m_Code) {
        this.m_Code = m_Code;
    }

    public String gettp_Code() {
        return tp_Code;
    }

    public void settp_Code(String tp_Code) {
        this.tp_Code = tp_Code;
    }

    public String getts_Title() {
        return ts_Title;
    }

    public void setts_Title(String ts_Title) {
        this.ts_Title = ts_Title;
    }

    public Date getts_Sday() {
        return ts_Sday;
    }

    public void setts_Sday(Date ts_Sday) {
        this.ts_Sday = ts_Sday;
    }

    public String getts_Theme() {
        return ts_Theme;
    }

    public void setts_Theme(String ts_Theme) {
        this.ts_Theme = ts_Theme;
    }

    public String getts_People() {
        return ts_People;
    }

    public void setts_People(String ts_People) {
        this.ts_People = ts_People;
    }

    public String getts_Thum() {
        return ts_Thum;
    }

    public void setts_Thum(String ts_Thum) {
        this.ts_Thum = ts_Thum;
    }

    public int getts_Period() {
        return ts_Period;
    }

    public void setts_Period(int ts_Period) {
        this.ts_Period = ts_Period;
    }

    public String getts_View() {
        return ts_View;
    }

    public void setts_View(String ts_View) {
        this.ts_View = ts_View;
    }

	@Override
	public String toString() {
		return "TravelScheduleVo [ts_Code=" + ts_Code + ", m_Code=" + m_Code + ", tp_Code=" + tp_Code + ", ts_Title="
				+ ts_Title + ", ts_Sday=" + ts_Sday + ", ts_Theme=" + ts_Theme + ", ts_People=" + ts_People
				+ ", ts_Thum=" + ts_Thum + ", ts_Period=" + ts_Period + ", ts_View=" + ts_View + ", ts_Date=" + ts_Date
				+ ", m_Id=" + m_Id + ", ts_Day=" + ts_Day + ", tp_Type=" + tp_Type + ", tp_Content=" + tp_Content
				+ ", tp_Name=" + tp_Name + ", ts_Memo=" + ts_Memo + ", m_Name=" + m_Name + ", tp_Img=" + tp_Img
				+ ", city_Code=" + city_Code + "]";
	}
}
