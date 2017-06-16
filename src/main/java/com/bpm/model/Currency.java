package com.bpm.model;

import java.math.BigInteger;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="currency")
//@Table(name = "currency",  uniqueConstraints = { 
//		@UniqueConstraint(columnNames = "CURRENCY_ISO_CODE")})
public class Currency {
	

	@Id 
	@GeneratedValue(strategy=GenerationType.IDENTITY)	
	@Column(name="CURR_ISO_MAP_ID", unique=true, nullable=false)
	private String currIsoMapId;
    
	@NotEmpty
    @Column(name="CURRENCY_ISO_CODE", nullable=false)
	private String currencyIsoCode;
	
	@Column(name="DEALS_COUNT",nullable=true)
	private BigInteger acceptedDealsCount;
	
	public String getCurrIsoMapId() {
		return currIsoMapId;
	}

	public void setCurrIsoMapId(String currIsoMapId) {
		this.currIsoMapId = currIsoMapId;
	}

	public String getCurrencyIsoCode() {
		return currencyIsoCode;
	}

	public void setCurrencyIsoCode(String currencyIsoCode) {
		this.currencyIsoCode = currencyIsoCode;
	}

	public BigInteger getAcceptedDealsCount() {
		return acceptedDealsCount;
	}

	public void setAcceptedDealsCount(BigInteger bigInteger) {
		this.acceptedDealsCount = bigInteger;
	}

	@Override
	public String toString() {
		return "Currency [currIsoMapId=" + currIsoMapId + ", currencyIsoCode=" + currencyIsoCode 
				+ ", acceptedDealsCount=" + acceptedDealsCount + "]";
	}
	
}
