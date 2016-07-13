package com.model.vo;

/**
 * Created by rich1 on 7/12/16.
 */
public class Course{
    private int courseId;
    private String courseName;
    private String courseTeacher;
    private String courseTime;
    private String courseRoom;
    private String useraccount;
    private int courseDate;

    public void setCourseDate(int courseDate)
    {
        this.courseDate = courseDate;
    }
    public int getCourseDate()
    {
        return this.courseDate;
    }

    public void setCourseId(int courseId)
    {
        this.courseId = courseId;
    }

    public int getCourseId()
    {
        return this.courseId;
    }

    public void setUseraccount(String useraccount)
    {
        this.useraccount = useraccount;
    }

    public String getUseraccount()
    {
        return this.useraccount;
    }
    public void setCourseName(String courseName)
    {
        this.courseName = courseName;
    }
    public String getCourseName()
    {
        return this.courseName;
    }
    public void setCourseTeacher(String courseTeacher)
    {
        this.courseTeacher = courseTeacher;
    }
    public String getCourseTeacher()
    {
        return this.courseTeacher;
    }
    public void setCourseTime(String courseTime)
    {
        this.courseTime = courseTime;
    }

    public String getCourseTime()
    {
        return this.courseTime;
    }

    public void setCourseRoom(String courseRoom)
    {
        this.courseRoom = courseRoom;
    }
    public String getCourseRoom()
    {
        return this.courseRoom;
    }

}
