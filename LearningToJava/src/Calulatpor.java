class C2{
	public int left,right;

	public C2(int left, int right) {
		this.left = left;
		this.right = right;
	}
	public void sum() {
		System.out.println(this.left+this.right);
	}
	public int avg() {
		return ((this.left*this.right)/2);
	}
}

class Minus extends C2{

	public Minus(int left, int right) {
		super(left, right);
		// TODO Auto-generated constructor stub
	}
	public void sub() {
		// TODO Auto-generated method stub
		System.out.println(left-right);
	}
	public void sum(){
		System.out.println("오버라이딩 더하기:"+(left+right));
	}
	// 오버라이딩 예제 - 동일 로직일 경우 super를 통해 사용한다(아니면 에러남)
	public int avg() {
		return super.avg();
	}
	
}
public class Calulatpor {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		C2 c2 = new C2(10,20);
		c2.sum();
		
		Minus m1 = new Minus(60, 30);
		m1.sub();
		m1.sum();
		System.out.println(m1.avg());
		
	}

}
