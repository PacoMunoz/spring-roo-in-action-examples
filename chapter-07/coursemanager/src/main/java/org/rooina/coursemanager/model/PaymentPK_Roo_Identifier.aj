// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.rooina.coursemanager.model;

import java.lang.Long;
import javax.persistence.Column;
import javax.persistence.Embeddable;

privileged aspect PaymentPK_Roo_Identifier {
    
    declare @type: PaymentPK: @Embeddable;
    
    @Column(name = "id", nullable = false)
    private Long PaymentPK.id;
    
    public PaymentPK.new(Long id) {
        super();
        this.id = id;
    }

    private PaymentPK.new() {
        super();
    }

    public Long PaymentPK.getId() {
        return id;
    }
    
}
