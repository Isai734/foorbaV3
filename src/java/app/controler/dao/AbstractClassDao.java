/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.controler.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author isai.castro
 *
 */
@Repository
public abstract class AbstractClassDao<E> {

    protected static final Logger logger = LoggerFactory.getLogger(AbstractClassDao.class);

    @Autowired
    protected SessionFactory sessionFactory;

    public AbstractClassDao() {
    }

    protected void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    protected void add(E entitie) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(entitie);
        logger.info("Saved successfully, Object Details=" + entitie);
    }

    protected void update(E entitie) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(entitie);
        logger.info("Updated successfully, Object Details=" + entitie);
    }

    protected List<E> getAll(Class clss) {
        Session session = this.sessionFactory.getCurrentSession();
        List<E> entitieList = session.createQuery("from " + clss.getSimpleName()).list();
        for (E entitie : entitieList) {
            logger.debug("Person List::" + entitie.toString());
        }
        return entitieList;
    }

    protected E getById(Class clss, int id) {
        Session session = this.sessionFactory.getCurrentSession();
        E entitie = (E) session.load(clss, new Integer(id));
        logger.info("Person loaded successfully, Person details=" + entitie);
        return entitie;
    }

    protected void delete(Class clss, int id) {
        Session session = this.sessionFactory.getCurrentSession();
        E entitie = (E) session.load(clss, new Integer(id));
        if (null != entitie) {
            session.delete(entitie);
            logger.info("Person deleted successfully, person details=" + entitie);
        } else {
            logger.info("Deleted failed, person details=" + entitie);
        }
    }

}
