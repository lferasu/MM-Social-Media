package model;

import javax.persistence.*;
import java.sql.Blob;
import java.time.LocalDate;
import java.util.List;

@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private String firstName;
    private String LastName;
    private String country;
    private String occupation;
    private String phone;
    private LocalDate birthDate;
    private String email;
    private String City;
    private String userName;
    private String password;
    private boolean blocked;

    @OneToMany(mappedBy="user")
    private List<Post> post;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "profile_picture_id", referencedColumnName = "id")
    private Blob profilePicture;

}
