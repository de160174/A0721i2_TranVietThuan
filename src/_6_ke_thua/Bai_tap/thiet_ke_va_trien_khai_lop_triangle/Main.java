package _6_ke_thua.Bai_tap.thiet_ke_va_trien_khai_lop_triangle;

public class Main {
    public static void main(String[] args) {
        Shape shape = new Shape("blue");
        System.out.println(shape);

        Shape triangle = new Triangle("red",3,4,5);
        System.out.println(triangle);
    }
}