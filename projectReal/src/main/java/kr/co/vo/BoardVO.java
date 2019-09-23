package kr.co.vo;

import java.util.Date;

public class BoardVO {

	private Integer bno;
	private String userid;
	private String subject;
	private String contents;
	private Date regdate;
	private int hit;
	private String secret;
	
	public BoardVO() {
		super();
	}

	public BoardVO(Integer bno, String userid, String subject, String contents, Date regdate, int hit, String secret) {
		super();
		this.bno = bno;
		this.userid = userid;
		this.subject = subject;
		this.contents = contents;
		this.regdate = regdate;
		this.hit = hit;
		this.secret = secret;
	}

	public Integer getBno() {
		return bno;
	}

	public void setBno(Integer bno) {
		this.bno = bno;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getSecret() {
		return secret;
	}

	public void setSecret(String secret) {
		this.secret = secret;
	}
	
	
	
	
	
}
