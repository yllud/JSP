package com.multi.www.web02;

public class MainCar {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Car car;
		
		for (int i = 0; i < 1000; i++) {
			car = new Car("����" + i, 10, 200);
			System.out.println(car); //�ּ�Ȯ��!
		}
		System.out.println("�޸�ũ��>> " + 12 * 1000);
	}

}
