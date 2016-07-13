package com.control.serviceImpl;

import com.control.service.IUserService;
import com.model.dao.IUserDao;
import com.model.vo.User;

/**
 * Created by rich1 on 7/7/16.
 */
public class UserServiceImpl implements IUserService{

    private IUserDao userDao;
    public void setUserDao(IUserDao userDao)
    {
        this.userDao = userDao;
    }
    public User validLogin(String useraccount, String password)
    {
        User user = userDao.get(User.class, useraccount);
        if(user != null)
        {
            if(user.getUseraccount().equals(useraccount)&&user.getPassword()
                    .equals(password))
            {
                return user;
            }
        }
        return null;
    }
}
