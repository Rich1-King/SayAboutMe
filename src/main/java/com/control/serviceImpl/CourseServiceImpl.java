package com.control.serviceImpl;

import com.control.service.ICourseService;
import com.model.dao.ICourseDao;
import com.model.vo.Course;

/**
 * Created by rich1 on 7/12/16.
 */
public class CourseServiceImpl implements ICourseService{

    private ICourseDao courseDao;
    public void setCourseDao(ICourseDao courseDao)
    {
        this.courseDao = courseDao;
    }
    public void addCourse(Course course){

    }
}
