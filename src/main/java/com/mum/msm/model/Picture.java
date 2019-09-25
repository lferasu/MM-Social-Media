package com.mum.msm.model;

import javax.persistence.*;
import java.sql.Blob;

@Entity
public class Picture {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private String image;

    @ManyToOne
    @JoinColumn(name="post_id", nullable=false)
    private Post post;

//    @OneToOne(mappedBy = "profilePicture")
//    private User user;

    @ManyToOne
    @JoinColumn(name="advertisement_id", nullable=false)
    private Advertisement advertisement;

    public Picture() {
    }

    public Picture(String image) {
        this.image = image;
        this.post = post;
        this.advertisement = advertisement;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }

    public Advertisement getAdvertisement() {
        return advertisement;
    }

    public void setAdvertisement(Advertisement advertisement) {
        this.advertisement = advertisement;
    }
}
