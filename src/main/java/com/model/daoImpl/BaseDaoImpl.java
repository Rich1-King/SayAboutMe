package com.model.daoImpl;

import com.model.dao.IBaseDao;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

import java.io.Serializable;
import java.util.List;

/**
 * Created by rich1 on 7/8/16.
 */
public class BaseDaoImpl<T> implements IBaseDao<T>{

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory){
        this.sessionFactory = sessionFactory;
    }

    public SessionFactory getSessionFactory(){
        return this.sessionFactory;
    }


    public T get(Class<T> entityClazz,Serializable id){
        System.out.println(id);
        return (T) getSessionFactory().getCurrentSession().get(entityClazz,id);
    }

    public Serializable save(T entity){
        return getSessionFactory().getCurrentSession().save(entity);
    }

    public void update(T entity){
        getSessionFactory().getCurrentSession().saveOrUpdate(entity);
    }

    public void delete(T entity){
        getSessionFactory().getCurrentSession().delete(entity);
    }

    public void delete(Class<T> entityClazz,Serializable id){
        getSessionFactory().getCurrentSession().createQuery("delete " +
                entityClazz.getSimpleName() + " en where en.id = ?")
                .setParameter("0",id)
                .executeUpdate();
    }

    public List<T> findAll(Class<T> entityClazz){
        return find("select en from " + entityClazz.getSimpleName() + " en");

    }

    public long findCount(Class<T> entityClazz){

        List<?> l = find("select count(*) from" + entityClazz.getSimpleName());
        if (l != null && l.size() == 1){
            return (Long) l.get(0);
        }

        return 0;
    }

    protected List<T> find(String hql){
        return getSessionFactory().getCurrentSession().createQuery(hql).list();
    }

    protected List<T> find(String hql,Object... params){
        Query query = getSessionFactory().getCurrentSession().createQuery(hql);
        for (int i = 0, len = params.length; i < len; i++){
            query.setParameter(i + "",params[i]);
        }
        return (List<T>) query.list();
    }

    protected List<T> findByPage(String hql,int pageNo,int pageSize){
        return getSessionFactory().getCurrentSession().createQuery(hql)
                .setFirstResult((pageNo - 1) * pageSize).setMaxResults
                        (pageSize).list();
    }

    protected List<T> findByPage(String hql, int pageNo, int pageSize,
                                 Object... params)
    {
        Query query = getSessionFactory().getCurrentSession().createQuery(hql);
        for(int i=0, len=params.length; i<len; i++)
        {
            query.setParameter(i+" ", params[i]);
        }

        return query.setFirstResult((pageNo-1)*pageSize).setMaxResults
                (pageSize).list();
    }



}
