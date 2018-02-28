package com.aarongoldbin.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.time.LocalDate;

/**
 *
 * @author agoldbin
 */
@Entity(name = "UserWeight")
@Table(name = "weight")
@Data public class UserWeight {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    @Column(name = "weightId")
    private int id;

    @ManyToOne
    private User user;

    private int weight;
    private LocalDate date;

    /**
     * Constructor for UserWeight
     */
    public UserWeight() {
    }

    /**
     * Constructor for UserWeight
     *
     * @param weight
     */
    public UserWeight(int weight) {
        this.weight = weight;
        setDate(LocalDate.now());
    }
}