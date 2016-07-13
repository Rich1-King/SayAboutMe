package com.control.service;

import com.model.vo.User;

/**
 * Created by rich1 on 7/7/16.
 */
public interface IUserService{
     User validLogin(String useraccount,String password);
}
