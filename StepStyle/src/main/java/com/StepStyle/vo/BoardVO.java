package com.StepStyle.vo;
import java.util.Date;

public class BoardVO {
    private int bidx;
    private String title;
    private Date wdate;
    private String body;
    private int hit;
    private String uId;

    public int getBidx() {
        return bidx;
    }

    public void setBidx(int bidx) {
        this.bidx = bidx;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

   

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public int getHit() {
        return hit;
    }

    public void setHit(int hit) {
        this.hit = hit;
    }
   

	public String getuId() {
		return uId;
	}

	public void setuId(String uId) {
		this.uId = uId;
	}

	public Date getWdate() {
		return wdate;
	}

	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}

	@Override
	public String toString() {
		return "BoardVO [bidx=" + bidx + ", title=" + title + ", wdate=" + wdate + ", body=" + body + ", hit=" + hit
				+ ", uId=" + uId + "]";
	}

	
	
	

   
}

