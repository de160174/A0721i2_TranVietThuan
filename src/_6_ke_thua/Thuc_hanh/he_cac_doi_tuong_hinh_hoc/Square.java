package _6_ke_thua.Thuc_hanh.he_cac_doi_tuong_hinh_hoc;

public class Square extends Rectangle{
    public Square() {
    }
    public Square(double side){
        super(side, side);
    }

    public Square(double side, String color, boolean filled){
        super(side, side, color, filled);
    }
    public double getSide(){
        return getWidth();
    }
    public void setSide(double side){
        setWidth(side);
        setLength(side);
    }
    @Override
    public void setWidth(double side){
        setSide(side);
    }
    @Override
    public void setLength(double side){
        setSide(side);
    }
    @Override
    public String toString() {
        return "A Square with side="
                + getSide()
                + ",which is a subclass of "
                + super.toString();
    }
}