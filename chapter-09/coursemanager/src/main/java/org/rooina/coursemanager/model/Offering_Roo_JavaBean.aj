// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.rooina.coursemanager.model;

import java.lang.String;
import org.rooina.coursemanager.model.Course;

privileged aspect Offering_Roo_JavaBean {
    
    public Course Offering.getCourse() {
        return this.course;
    }
    
    public void Offering.setCourse(Course course) {
        this.course = course;
    }
    
    public String Offering.getLocation() {
        return this.location;
    }
    
    public void Offering.setLocation(String location) {
        this.location = location;
    }
    
}
