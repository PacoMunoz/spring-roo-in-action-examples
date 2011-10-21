// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.rooina.coursemanager.model;

import java.lang.Integer;
import java.lang.String;
import java.util.Date;
import java.util.Set;
import org.rooina.coursemanager.model.CourseTypeEnum;
import org.rooina.coursemanager.model.Offering;
import org.rooina.coursemanager.model.Tag;
import org.rooina.coursemanager.model.TrainingProgram;

privileged aspect Course_Roo_JavaBean {
    
    public String Course.getName() {
        return this.name;
    }
    
    public void Course.setName(String name) {
        this.name = name;
    }
    
    public String Course.getDescription() {
        return this.description;
    }
    
    public void Course.setDescription(String description) {
        this.description = description;
    }
    
    public Integer Course.getMaxiumumCapacity() {
        return this.maxiumumCapacity;
    }
    
    public void Course.setMaxiumumCapacity(Integer maxiumumCapacity) {
        this.maxiumumCapacity = maxiumumCapacity;
    }
    
    public CourseTypeEnum Course.getCourseType() {
        return this.courseType;
    }
    
    public void Course.setCourseType(CourseTypeEnum courseType) {
        this.courseType = courseType;
    }
    
    public TrainingProgram Course.getTrainingProgram() {
        return this.trainingProgram;
    }
    
    public void Course.setTrainingProgram(TrainingProgram trainingProgram) {
        this.trainingProgram = trainingProgram;
    }
    
    public Set<Tag> Course.getTags() {
        return this.tags;
    }
    
    public void Course.setTags(Set<Tag> tags) {
        this.tags = tags;
    }
    
    public Set<Offering> Course.getOfferings() {
        return this.offerings;
    }
    
    public void Course.setOfferings(Set<Offering> offerings) {
        this.offerings = offerings;
    }
    
    public Date Course.getCreatedDate() {
        return this.createdDate;
    }
    
    public void Course.setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }
    
}
