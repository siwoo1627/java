import java.util.Scanner;

public class Gugudan {

	public static void main(String[] args) {
		// ������ �Է��ϱ�(�ݺ��� ���)
		Scanner scanner = new Scanner(System.in);
		System.out.print("���ڸ� �Է��ϼ���: ");
		int num = scanner.nextInt();
		
		for(int i=1; i<10; i++) {
			System.out.println("1 * "+i+" = "+i*num);
		}
	}

}
