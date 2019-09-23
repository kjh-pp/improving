package kr.co.vo;

public class PaymentVO {
	
	// 결제번호, 요금, 대여번호 
	private int payment_num;
	private int charge;
	private int record_num;
	
	public PaymentVO() {}

	public PaymentVO(int payment_num, int charge, int record_num) {
		super();
		this.payment_num = payment_num;
		this.charge = charge;
		this.record_num = record_num;
	}

	public int getPayment_num() {
		return payment_num;
	}

	public void setPayment_num(int payment_num) {
		this.payment_num = payment_num;
	}

	public int getCharge() {
		return charge;
	}

	public void setCharge(int charge) {
		this.charge = charge;
	}

	public int getRecord_num() {
		return record_num;
	}

	public void setRecord_num(int record_num) {
		this.record_num = record_num;
	}
	
}
