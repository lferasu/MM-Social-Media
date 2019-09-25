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
import java.util.Objects;
import java.util.Optional;
import java.util.function.*;

public class UserDao implements Dao<User> {
    private EntityManager entityManager;

    public UserDao()
    {
        entityManager =  new JpaEntityManagerFactory(
                new Class[]{User.class}).getEntityManager();
    }



    @Override
    public Optional<User> get(long id) {
        return Optional.ofNullable(entityManager.find(User.class, id));
    }

    public List<User> findWithUserName(String uname) {
        return entityManager.createQuery(
                "SELECT c FROM User c WHERE c.userName LIKE :uname")
                .setParameter("uname", uname)
                .setMaxResults(1)
                .getResultList();
    }

    @Override
    public List<User> getAll() {
        Query query = entityManager.createQuery("SELECT e FROM User e");
        return query.getResultList();
    }

    @Override
    public void save(User user) {
        executeInsideTransaction(entityManager -> entityManager.persist(user));
    }

    @Override
    public void update(User user, String[] params) {
        user.setFirstName(Objects.requireNonNull(params[0], "Name cannot be null"));
        user.setEmail(Objects.requireNonNull(params[1], "Email cannot be null"));
        executeInsideTransaction(entityManager -> entityManager.merge(user));
    }

    @Override
    public void delete(User user) {
        executeInsideTransaction(entityManager -> entityManager.remove(user));
        entityManager.remove(user);
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
