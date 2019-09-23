package model;

import javax.persistence.*;
import java.sql.Blob;

@Entity
public class Post {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private String text;
    @OneToMany(mappedBy="post")
    private Picture picture;
    private boolean enabled;

}
