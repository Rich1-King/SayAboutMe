package com.model.vo;

import com.control.permission.UserPermission;

/**
 * Created by rich1 on 7/7/16.
 */
public class User{

    private String useraccount;
    private String username;
    private String password;
    private UserPermission permission;

    public void setUseraccount(String useraccount){ this.useraccount =
            useraccount; }
    public String getUseraccount(){ return this.useraccount; }
    public void setUsername(String username)
    {
        this.username = username;
    }
    public String getUsername()
    {
        return this.username;
    }
    public void setPassword(String password)
    {
        this.password = password;
    }

    public String getPassword()
    {
        return this.password;
    }

    public void setPermission(UserPermission permission)
    {
            this.permission = permission;
    }

    public UserPermission getPermission()
    {
        return this.permission;
    }

}
