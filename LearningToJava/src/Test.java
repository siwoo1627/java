class C3 {
    int v = 10;
 
    void m() {
        int v = 20;
        System.out.println(this.v);
    }
}
public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        C3 c1 = new C3();
        c1.m();	// 10
	}

}
