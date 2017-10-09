package online.flowers.entity;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "order")

public class OrderEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "orderAt")
    private Date orderAt;

    @Column(name = "total")
    private float total;

    @Column(name = "fullName")
    private String fullName;

    @Column(name = "address")
    private String address;

    @Column(name = "email")
    private String email;

    @Column(name = "note")
    private String note;

    @OneToMany(mappedBy = "order")
    private List<OrderDetailEntity> orderDetailList;

}
