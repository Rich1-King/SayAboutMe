package com.control.action;

import com.control.permission.UserPermission;
import com.control.service.IUserService;
import com.model.vo.User;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import static com.opensymphony.xwork2.Action.SUCCESS;

/**
 * Created by rich1 on 7/7/16.
 */
public class LoginAction{

    private String useraccount;
    private String password;
    private IUserService IUserService;
    private String tip;
    private String username;
    private UserPermission permission;

    public void setUseraccount(String useraccount)
    {
        this.useraccount = useraccount;
    }
    public String getUseraccount()
    {
        return this.useraccount;
    }
    public void setPassword(String password)
    {
        this.password = password;
    }
    public String getPassword()
    {
        return this.password;
    }
    public void setTip(String tip)
    {
        this.tip = tip;
    }
    public String getTip()
    {
        return this.tip;
    }
    public void setUsername(String username)
    {
        this.username = username;
    }
    public String getUsername()
    {
        return this.username;
    }
    public void setPermission(UserPermission permission){ this.permission =
            permission; }
    public UserPermission getPermission(){ return this.permission; }

    public void setIUserService(IUserService IUserService)
    {
        this.IUserService = IUserService;
    }


    HttpServletRequest request = ServletActionContext.getRequest();
    HttpServletResponse response = ServletActionContext.getResponse();
    HttpSession session = request.getSession();


    public String execute(){

        User user = IUserService.validLogin(getUseraccount(),
                getPassword());
        if(user != null)
        {
            session.setAttribute("username",user.getUsername());
            session.setAttribute("useraccount",user.getUseraccount());
            session.setAttribute("permission", user.getPermission());
        }
        else
        {
            setTip("用户名或密码错误");
        }
        return SUCCESS;
    }
}
