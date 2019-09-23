package model;

import javax.persistence.*;
import java.util.List;

@Entity
public class Advertisement {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private String text;

    @OneToMany(mappedBy="advertisement")
    private List<Picture> picture;
    private boolean enabled;
}
