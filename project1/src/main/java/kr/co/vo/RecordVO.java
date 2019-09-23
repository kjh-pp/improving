package kr.co.vo;

public class RecordVO {

	private Integer record_num;
	private Integer member_num;
	private Integer bike_num;
	private Integer office_num;
	private String time;
	private boolean DnA;
	
	public RecordVO() {
		super();
	}

	public RecordVO(Integer record_num, Integer member_num, Integer bike_num, Integer office_num, String time,
			boolean dnA) {
		super();
		this.record_num = record_num;
		this.member_num = member_num;
		this.bike_num = bike_num;
		this.office_num = office_num;
		this.time = time;
		DnA = dnA;
	}

	public Integer getRecord_num() {
		return record_num;
	}

	public void setRecord_num(Integer record_num) {
		this.record_num = record_num;
	}

	public Integer getMember_num() {
		return member_num;
	}

	public void setMember_num(Integer member_num) {
		this.member_num = member_num;
	}

	public Integer getBike_num() {
		return bike_num;
	}

	public void setBike_num(Integer bike_num) {
		this.bike_num = bike_num;
	}

	public Integer getOffice_num() {
		return office_num;
	}

	public void setOffice_num(Integer office_num) {
		this.office_num = office_num;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public boolean isDnA() {
		return DnA;
	}

	public void setDnA(boolean dnA) {
		DnA = dnA;
	}
	
}
