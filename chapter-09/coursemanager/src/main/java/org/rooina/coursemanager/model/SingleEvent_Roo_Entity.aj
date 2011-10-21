// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.rooina.coursemanager.model;

import java.lang.Long;
import java.util.List;
import javax.persistence.Entity;
import org.rooina.coursemanager.model.SingleEvent;

privileged aspect SingleEvent_Roo_Entity {
    
    declare @type: SingleEvent: @Entity;
    
    public static long SingleEvent.countSingleEvents() {
        return entityManager().createQuery("SELECT COUNT(o) FROM SingleEvent o", Long.class).getSingleResult();
    }
    
    public static List<SingleEvent> SingleEvent.findAllSingleEvents() {
        return entityManager().createQuery("SELECT o FROM SingleEvent o", SingleEvent.class).getResultList();
    }
    
    public static SingleEvent SingleEvent.findSingleEvent(Long id) {
        if (id == null) return null;
        return entityManager().find(SingleEvent.class, id);
    }
    
    public static List<SingleEvent> SingleEvent.findSingleEventEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM SingleEvent o", SingleEvent.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
