package model;

import javax.persistence.*;
import java.sql.Blob;

@Entity
public class Picture {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private Blob image;

    @ManyToOne
    @JoinColumn(name="post_id", nullable=false)
    private Post post;
}
