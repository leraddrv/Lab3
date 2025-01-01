package org.example;

import org.example.entities.Good;
import static jakarta.persistence.Persistence.createEntityManagerFactory;
import jakarta.persistence.*;
import java.util.List;
import java.util.Scanner;

public class App 
{
    public static void main( String[] args )
    {
        Scanner scanner = new Scanner(System.in);
        EntityManagerFactory emfactory = createEntityManagerFactory( "org.example" );
        EntityManager entitymanager = emfactory.createEntityManager( );

        Query query1 = entitymanager
                .createQuery("select g.name from Good g where g.availiable=true ");
        List list = query1.getResultList();

        System.out.println("Available goods list:");
        for(var e:list) {
            System.out.println(e);
        }

        Query query2 = entitymanager
                .createQuery("select g.id from Order g where g.user.id = 1");

        System.out.println("----------------------------------------");
        System.out.println("Orders made by customer w ID 1:");
        list = query2.getResultList();
        for(var e:list) {
            System.out.println(e);
        }

        Query query3 = entitymanager
                .createQuery("SELECT sum (g.price) FROM Good g");

        System.out.println("----------------------------------------");
        System.out.println("Summary price for all goods: ");
        list = query3.getResultList();
        for(var e:list) {
            System.out.println(e);
        }

        System.out.println("----------------------------------------");
        System.out.println("Adding new good to the db: ");
        System.out.println("Enter name: ");
        String name = scanner.nextLine();
        System.out.println("Enter price: ");
        Float price = scanner.nextFloat();
        Boolean available = true;

        Good good = new Good();
        good.setName(name);
        good.setPrice(price);
        good.setAvailiable(available);
        entitymanager.getTransaction().begin();
        entitymanager.persist(good);
        entitymanager.getTransaction().commit();
        System.out.println(good.getId());
}
}
