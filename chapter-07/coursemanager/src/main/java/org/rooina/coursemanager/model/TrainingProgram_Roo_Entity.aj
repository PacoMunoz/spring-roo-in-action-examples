// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.rooina.coursemanager.model;

import java.lang.Long;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.rooina.coursemanager.model.TrainingProgram;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TrainingProgram_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager TrainingProgram.entityManager;
    
    @Transactional
    public void TrainingProgram.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void TrainingProgram.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            TrainingProgram attached = TrainingProgram.findTrainingProgram(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void TrainingProgram.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void TrainingProgram.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public TrainingProgram TrainingProgram.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        TrainingProgram merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager TrainingProgram.entityManager() {
        EntityManager em = new TrainingProgram().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long TrainingProgram.countTrainingPrograms() {
        return entityManager().createQuery("SELECT COUNT(o) FROM TrainingProgram o", Long.class).getSingleResult();
    }
    
    public static List<TrainingProgram> TrainingProgram.findAllTrainingPrograms() {
        return entityManager().createQuery("SELECT o FROM TrainingProgram o", TrainingProgram.class).getResultList();
    }
    
    public static TrainingProgram TrainingProgram.findTrainingProgram(Long id) {
        if (id == null) return null;
        return entityManager().find(TrainingProgram.class, id);
    }
    
    public static List<TrainingProgram> TrainingProgram.findTrainingProgramEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM TrainingProgram o", TrainingProgram.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
