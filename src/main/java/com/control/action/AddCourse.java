package com.control.action;

import com.control.service.ICourseService;
import com.model.vo.Course;

/**
 * Created by rich1 on 7/12/16.
 */
public class AddCourse{
    private String courseName;
    private String courseTeacher;
    private String courseTime;
    private String courseRoom;
    private String tip;

    public void setTip(String tip)
    {
        this.tip = tip;
    }
    public String getTip()
    {
        return this.tip;
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

    private ICourseService courseService;
    public void setCourseService(ICourseService courseService)
    {
        this.courseService = courseService;
    }

    Course course;
    public void execute()
    {


        courseService.addCourse(course);
    }
}
