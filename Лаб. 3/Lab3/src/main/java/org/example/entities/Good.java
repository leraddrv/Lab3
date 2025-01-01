package org.example.entities;

import jakarta.persistence.*;
import java.util.Objects;


@Entity
@Table(name = "goods")
public class Good{

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    @Id
    private int id;
    @Column(name = "name", nullable = false)
    private String name;
    @Column(name = "price", nullable = false)
    private double price;
    @Column(name = "availiable", nullable = false)
    private boolean availiable;

    public Good(String name, double price, boolean availiable) {
        this.name = name;
        this.price = price;
        this.availiable = availiable;
    }

    public Good() {

    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public boolean isAvailiable() {
        return availiable;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Good)) return false;
        if (!super.equals(o)) return false;
        Good good = (Good) o;
        return getId() == good.getId() && Double.compare(good.getPrice(), getPrice()) == 0 && isAvailiable() == good.isAvailiable() && getName().equals(good.getName());
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setAvailiable(boolean availiable) {
        this.availiable = availiable;
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), getId(), getName(), getPrice(), isAvailiable());
    }
}