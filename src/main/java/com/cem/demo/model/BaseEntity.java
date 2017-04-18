package com.cem.demo.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.PrePersist;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@MappedSuperclass
public abstract class BaseEntity implements Serializable {

	private static final long serialVersionUID = 8280023721542984081L;
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "INSERT_DATE", nullable = true)
	private Date insertDate;

	@PrePersist
	public void onCreate() {
		insertDate = new Date();
	}

	public Date getInsertDate() {
		return insertDate;
	}

	public void setInsertDate(Date insertDate) {
		this.insertDate = insertDate;
	}
}
