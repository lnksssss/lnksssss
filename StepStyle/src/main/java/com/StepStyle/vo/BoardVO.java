package com.StepStyle.vo;
import java.util.Date;

public class BoardVO {
    private int bidx;
    private String title;
    private Date wdate;
    private String body;
    private int hit;
    private String id;

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

    public Date getWdate() {
        return wdate;
    }

    public void setWdate(Date wdate) {
        this.wdate = wdate;
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

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "BoardVO [bidx=" + bidx + ", title=" + title + ", wdate=" + wdate + ", body=" + body + ", hit=" + hit + ", id=" + id + "]";
    }
}

