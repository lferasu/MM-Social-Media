package com.mum.msm.daoImpl;

import com.mum.msm.config.JpaEntityManagerFactory;
import com.mum.msm.dao.Dao;
import com.mum.msm.model.Advertisement;
import com.mum.msm.model.Picture;
import com.mum.msm.model.Post;
import com.mum.msm.model.User;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;

public class PostDao implements Dao<Post> {
    private EntityManager entityManager;

    public PostDao()
    {
        entityManager =  new JpaEntityManagerFactory(
                new Class[]{User.class, Post.class}).getEntityManager();
    }

    @Override
    public Optional<Post> get(long id) {
        return Optional.ofNullable(entityManager.find(Post.class, id));
    }

    @Override
    public List<Post> getAll() {
        Query query = entityManager.createQuery("SELECT e FROM Post e");
        return query.getResultList();
    }

    @Override
    public void save(Post post) {
        executeInsideTransaction(entityManager -> entityManager.persist(post));
    }

    @Override
    public void update(Post post, String[] params) {
        executeInsideTransaction(entityManager -> entityManager.merge(post));
    }

    @Override
    public void delete(Post post) {
        executeInsideTransaction(entityManager -> entityManager.remove(post));
        entityManager.remove(post);
    }

    private void executeInsideTransaction(Consumer<EntityManager> action) {
        EntityTransaction tx = entityManager.getTransaction();
        try {
            tx.begin();
            action.accept(entityManager);
            tx.commit();
        }
        catch (RuntimeException e) {
            tx.rollback();
            throw e;
        }
    }
}
