package com.example.sweater2.domain;

import javax.persistence.*;

import lombok.Getter;
import lombok.Setter;

import java.util.Set;


@Entity
@Table(name = "usr")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Getter @Setter private Long id;

    @Getter @Setter private String username;
    @Getter @Setter private String password;
    @Getter @Setter private boolean active;

    @ElementCollection(targetClass = Role.class, fetch = FetchType.EAGER)
    @CollectionTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"))
    @Enumerated(EnumType.STRING)
    @Getter @Setter private Set<Role> roles;

}
