package kr.co.vo;

//Bean, POJO, DTO

public class MemberVO {
	
	private int member_num; // 회원번호
	private String account; // 계좌번호
	private String id; // 아이디
	private String pw; // 비밀번호
	private int rating; // 관리자
	private String email; // 이메일
	private String phone; // 연락처
	private String gender; // 성별
	private String name; // 이름
	
	public MemberVO() {}

	public MemberVO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}

	public MemberVO(int member_num, String account, String id, String pw, int rating, String email, String phone, String gender, String name) {
		super();
		this.member_num = member_num;
		this.account = account;
		this.id = id;
		this.pw = pw;
		this.rating = rating;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
		this.name = name;
	}

	public int getMember_num() {
		return member_num;
	}

	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContact() {
		return phone;
	}

	public void setContact(String phone) {
		this.phone = phone;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMember_Interesting() {
		// TODO Auto-generated method stub
		return null;
	}

	public void setMember_OpneInfo(int member_OpenInfo) {
		// TODO Auto-generated method stub
		
	}

	public String getMember_OpneInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	public void setMember_Image(String url) {
		// TODO Auto-generated method stub
		
	}
	
	
}
