import java.util.Scanner;

public class Gugudan {

	public static void main(String[] args) {
		// 구구단 입력하기(반복문 사용)
		Scanner scanner = new Scanner(System.in);
		System.out.print("숫자를 입력하세요: ");
		int num = scanner.nextInt();
		
		for(int i=1; i<10; i++) {
			System.out.println("1 * "+i+" = "+i*num);
		}
	}

}
