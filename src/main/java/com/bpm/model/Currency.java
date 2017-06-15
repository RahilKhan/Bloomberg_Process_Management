package com.bpm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="currency")
public class Currency {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="CURR_ISO_MAP_ID", unique=true, nullable=false)
	private String currIsoMapId;
    
	@NotEmpty
    @Column(name="CURRENCY_ISO_CODE", unique=true, nullable=false)
	private String currencyIsoCode;
	
	@NotEmpty
    @Column(name="COUNTRY", nullable=false)	
	private String country;
	
	@NotEmpty
    @Column(name="ADM_FLAG", nullable=false)
	private String admFlag;

	@Column(name="DEALS_COUNT",nullable=true)
	private int acceptedDealsCount;
	
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

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getAdmFlag() {
		return admFlag;
	}

	public void setAdmFlag(String admFlag) {
		this.admFlag = admFlag;
	}

	public int getAcceptedDealsCount() {
		return acceptedDealsCount;
	}

	public void setAcceptedDealsCount(int acceptedDealsCount) {
		this.acceptedDealsCount = acceptedDealsCount;
	}

	@Override
	public String toString() {
		return "Currency [currIsoMapId=" + currIsoMapId + ", currencyIsoCode=" + currencyIsoCode + ", country="
				+ country + ", admFlag=" + admFlag
				+ ", acceptedDealsCount=" + acceptedDealsCount + "]";
	}
	
}
