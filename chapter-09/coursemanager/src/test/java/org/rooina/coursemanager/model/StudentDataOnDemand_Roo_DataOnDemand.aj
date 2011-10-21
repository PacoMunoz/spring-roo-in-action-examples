// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.rooina.coursemanager.model;

import java.util.List;
import java.util.Random;
import org.rooina.coursemanager.model.Student;
import org.springframework.stereotype.Component;

privileged aspect StudentDataOnDemand_Roo_DataOnDemand {
    
    declare @type: StudentDataOnDemand: @Component;
    
    private Random StudentDataOnDemand.rnd = new java.security.SecureRandom();
    
    private List<Student> StudentDataOnDemand.data;
    
    public Student StudentDataOnDemand.getNewTransientStudent(int index) {
        org.rooina.coursemanager.model.Student obj = new org.rooina.coursemanager.model.Student();
        setFirstName(obj, index);
        setMiddleNameOrInitial(obj, index);
        setLastName(obj, index);
        setAddressLine1(obj, index);
        setAddressLine2(obj, index);
        setCity(obj, index);
        setStateCode(obj, index);
        setPostalCode(obj, index);
        setEmergencyContactName(obj, index);
        setEmergencyContactInfo(obj, index);
        setDietaryRestrictions(obj, index);
        return obj;
    }
    
    public void StudentDataOnDemand.setFirstName(Student obj, int index) {
        java.lang.String firstName = "firstName_" + index;
        if (firstName.length() > 30) {
            firstName = firstName.substring(0, 30);
        }
        obj.setFirstName(firstName);
    }
    
    public void StudentDataOnDemand.setMiddleNameOrInitial(Student obj, int index) {
        java.lang.String middleNameOrInitial = "middleNameOrInitial_" + index;
        if (middleNameOrInitial.length() > 30) {
            middleNameOrInitial = middleNameOrInitial.substring(0, 30);
        }
        obj.setMiddleNameOrInitial(middleNameOrInitial);
    }
    
    public void StudentDataOnDemand.setLastName(Student obj, int index) {
        java.lang.String lastName = "lastName_" + index;
        if (lastName.length() > 30) {
            lastName = lastName.substring(0, 30);
        }
        obj.setLastName(lastName);
    }
    
    public void StudentDataOnDemand.setAddressLine1(Student obj, int index) {
        java.lang.String addressLine1 = "addressLine1_" + index;
        if (addressLine1.length() > 60) {
            addressLine1 = addressLine1.substring(0, 60);
        }
        obj.setAddressLine1(addressLine1);
    }
    
    public void StudentDataOnDemand.setAddressLine2(Student obj, int index) {
        java.lang.String addressLine2 = "addressLine2_" + index;
        if (addressLine2.length() > 60) {
            addressLine2 = addressLine2.substring(0, 60);
        }
        obj.setAddressLine2(addressLine2);
    }
    
    public void StudentDataOnDemand.setCity(Student obj, int index) {
        java.lang.String city = "city_" + index;
        if (city.length() > 40) {
            city = city.substring(0, 40);
        }
        obj.setCity(city);
    }
    
    public void StudentDataOnDemand.setStateCode(Student obj, int index) {
        java.lang.String stateCode = "s" + index;
        if (stateCode.length() > 2) {
            stateCode = stateCode.substring(0, 2);
        }
        obj.setStateCode(stateCode);
    }
    
    public void StudentDataOnDemand.setPostalCode(Student obj, int index) {
        java.lang.String postalCode = "postalCo_" + index;
        if (postalCode.length() > 10) {
            postalCode = postalCode.substring(0, 10);
        }
        obj.setPostalCode(postalCode);
    }
    
    public void StudentDataOnDemand.setEmergencyContactName(Student obj, int index) {
        java.lang.String emergencyContactName = "emergencyContactName_" + index;
        if (emergencyContactName.length() > 30) {
            emergencyContactName = emergencyContactName.substring(0, 30);
        }
        obj.setEmergencyContactName(emergencyContactName);
    }
    
    public void StudentDataOnDemand.setEmergencyContactInfo(Student obj, int index) {
        java.lang.String emergencyContactInfo = "emergencyContactInfo_" + index;
        if (emergencyContactInfo.length() > 80) {
            emergencyContactInfo = emergencyContactInfo.substring(0, 80);
        }
        obj.setEmergencyContactInfo(emergencyContactInfo);
    }
    
    public void StudentDataOnDemand.setDietaryRestrictions(Student obj, int index) {
        java.lang.String dietaryRestrictions = "dietaryRestrictions_" + index;
        if (dietaryRestrictions.length() > 30) {
            dietaryRestrictions = dietaryRestrictions.substring(0, 30);
        }
        obj.setDietaryRestrictions(dietaryRestrictions);
    }
    
    public Student StudentDataOnDemand.getSpecificStudent(int index) {
        init();
        if (index < 0) index = 0;
        if (index > (data.size() - 1)) index = data.size() - 1;
        Student obj = data.get(index);
        return Student.findStudent(obj.getId());
    }
    
    public Student StudentDataOnDemand.getRandomStudent() {
        init();
        Student obj = data.get(rnd.nextInt(data.size()));
        return Student.findStudent(obj.getId());
    }
    
    public boolean StudentDataOnDemand.modifyStudent(Student obj) {
        return false;
    }
    
    public void StudentDataOnDemand.init() {
        data = org.rooina.coursemanager.model.Student.findStudentEntries(0, 10);
        if (data == null) throw new IllegalStateException("Find entries implementation for 'Student' illegally returned null");
        if (!data.isEmpty()) {
            return;
        }
        
        data = new java.util.ArrayList<org.rooina.coursemanager.model.Student>();
        for (int i = 0; i < 10; i++) {
            org.rooina.coursemanager.model.Student obj = getNewTransientStudent(i);
            obj.persist();
            obj.flush();
            data.add(obj);
        }
    }
    
}
