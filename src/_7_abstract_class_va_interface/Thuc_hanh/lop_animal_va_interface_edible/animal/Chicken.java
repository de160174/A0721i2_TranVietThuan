package _7_abstract_class_va_interface.Thuc_hanh.lop_animal_va_interface_edible.animal;

import _7_abstract_class_va_interface.Thuc_hanh.lop_animal_va_interface_edible.edible.Edible;

public class Chicken extends Animal implements Edible {
    @Override
    public String makeSound() {
        return "Chicken: cluck-cluck!";
    }

    @Override
    public String howtoEat() {
        return "Could be fried";
    }
}