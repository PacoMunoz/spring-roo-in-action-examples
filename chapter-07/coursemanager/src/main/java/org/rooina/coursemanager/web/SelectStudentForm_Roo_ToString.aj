// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.rooina.coursemanager.web;

import java.lang.String;

privileged aspect SelectStudentForm_Roo_ToString {
    
    public String SelectStudentForm.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("StudentId: ").append(getStudentId());
        return sb.toString();
    }
    
}
