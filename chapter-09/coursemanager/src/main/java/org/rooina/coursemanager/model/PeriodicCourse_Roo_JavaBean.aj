// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.rooina.coursemanager.model;

import java.util.Date;
import org.rooina.coursemanager.model.FrequencyType;

privileged aspect PeriodicCourse_Roo_JavaBean {
    
    public Date PeriodicCourse.getStartDate() {
        return this.startDate;
    }
    
    public void PeriodicCourse.setStartDate(Date startDate) {
        this.startDate = startDate;
    }
    
    public FrequencyType PeriodicCourse.getFrequency() {
        return this.frequency;
    }
    
    public void PeriodicCourse.setFrequency(FrequencyType frequency) {
        this.frequency = frequency;
    }
    
    public Date PeriodicCourse.getEndDate() {
        return this.endDate;
    }
    
    public void PeriodicCourse.setEndDate(Date endDate) {
        this.endDate = endDate;
    }
    
}
