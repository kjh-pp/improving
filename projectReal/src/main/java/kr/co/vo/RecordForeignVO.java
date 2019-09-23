package kr.co.vo;

public class RecordForeignVO {

	private Integer member_num;
	private Integer bike_num;
	private Integer office_num;
	
	public RecordForeignVO() {
		super();
	}

	public RecordForeignVO(Integer member_num, Integer bike_num, Integer office_num) {
		super();
		this.member_num = member_num;
		this.bike_num = bike_num;
		this.office_num = office_num;
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
	
}
