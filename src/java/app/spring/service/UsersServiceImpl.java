/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.spring.service;

import app.controler.dao.AbstractClassDao;
import app.model.User;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author isai.castro
 */

public class UsersServiceImpl extends AbstractClassDao<User> {

   public UsersServiceImpl() {
        super();
    }

    public UsersServiceImpl(SessionFactory sf) {
        super.setSessionFactory(sf);
    }

    @Transactional
    public void delete(int id) {
        super.delete(User.class, id); //To change body of generated methods, choose Tools | Templates.
    }

    @Transactional
    public User getById(int id) {
        return super.getById(User.class, id); //To change body of generated methods, choose Tools | Templates.
    }

    @Transactional
    @SuppressWarnings("unchecked")
    public List<User> getAll() {
        return super.getAll(User.class); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @Transactional
    public void update(User entitie) {
        super.update(entitie); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @Transactional
    public void add(User entitie) {
        super.add(entitie); //To change body of generated methods, choose Tools | Templates.
    }

    @SuppressWarnings({"unchecked", "deprecation"})
    @Transactional
    public boolean findUser(String uname, String upwd) {
        List<User> userObj = null;
        String sqlQuery = "from User u where u.email=:n and u.password= :p";
        try {
            Session sesion = super.sessionFactory.getCurrentSession();
            userObj = sesion.createQuery(sqlQuery)
                    .setParameter("n", uname)
                    .setParameter("p", upwd)
                    .list();
            if (userObj != null && userObj.size() > 0) {
                logger.info("Name= " + userObj.get(0).getEmail() + ", Password= " + userObj.get(0).getPassword());
            }
        } catch (Exception e) {
            logger.error("An error occurred while fetching the user details from the database", e);
        }
        return (userObj != null && userObj.size() > 0);
    }

}
