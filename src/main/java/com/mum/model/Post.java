package com.mum.model;

import javax.persistence.*;
import java.util.List;

@Entity
public class Post {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private String text;

    @OneToMany(mappedBy="post")
    private List<Picture> picture;
    private boolean enabled;

    @ManyToOne
    @JoinColumn(name="user_id", nullable=false)
    private Post post;

}
