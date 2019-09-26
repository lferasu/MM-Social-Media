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

public class AdvertisementDao implements Dao<Advertisement> {
    private EntityManager entityManager;

    public AdvertisementDao()
    {
        entityManager =  new JpaEntityManagerFactory(
                new Class[]{ Advertisement.class}).getEntityManager();
    }

    @Override
    public Optional<Advertisement> get(long id) {
        return Optional.ofNullable(entityManager.find(Advertisement.class, id));
    }

    @Override
    public List<Advertisement> getAll() {
        Query query = entityManager.createQuery("SELECT e FROM Advertisement e");
        return query.getResultList();
    }

    @Override
    public void save(Advertisement advertisement) {
        executeInsideTransaction(entityManager -> entityManager.persist(advertisement));
    }

    @Override
    public void update(Advertisement advertisement, String[] params) {
        executeInsideTransaction(entityManager -> entityManager.merge(advertisement));
    }

    @Override
    public void delete(Advertisement advertisement) {
        executeInsideTransaction(entityManager -> entityManager.remove(advertisement));
        entityManager.remove(advertisement);
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
