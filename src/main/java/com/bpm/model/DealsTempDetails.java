package com.bpm.model;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="deals_csv_import_temp")
public class DealsTempDetails {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="DEAL_UNIQUE_ID", unique=true, nullable=false)
	private String dealUniqueId;
	
    @Column(name="ORDER_CURR_ISO", nullable=true)	
	private String orderCurrIso;
	
    @Column(name="RECIPIENT_CURR_ISO", nullable=true)	
	private String recipientCurrIso;
	
    @Column(name="DEAL_TIMESTAMP", nullable=true)	
	private Date dealsTimeStamp;
	
    @Column(name="DEAL_AMT_IN_ORDER_CURR_ISO", nullable=true)	
	private BigDecimal dealAmtInOrderdingCurrIso;
	
	public String getDealUniqueId() {
		return dealUniqueId;
	}

	public void setDealUniqueId(String dealUniqueId) {
		this.dealUniqueId = dealUniqueId;
	}

	public String getOrderCurrIso() {
		return orderCurrIso;
	}

	public void setOrderCurrIso(String orderCurrIso) {
		this.orderCurrIso = orderCurrIso;
	}

	public String getRecipientCurrIso() {
		return recipientCurrIso;
	}

	public void setRecipientCurrIso(String recipientCurrIso) {
		this.recipientCurrIso = recipientCurrIso;
	}

	public Date getDealsTimeStamp() {
		return dealsTimeStamp;
	}

	public void setDealsTimeStamp(Date dealsTimeStamp) {
		this.dealsTimeStamp = dealsTimeStamp;
	}

	public BigDecimal getDealAmtInOrderdingCurrIso() {
		return dealAmtInOrderdingCurrIso;
	}

	public void setDealAmtInOrderdingCurrIso(BigDecimal dealAmtInOrderdingCurrIso) {
		this.dealAmtInOrderdingCurrIso = dealAmtInOrderdingCurrIso;
	}

	@Override
	public String toString() {
		return "DealsTempDetails [dealUniqueId=" + dealUniqueId + ", orderCurrIso=" + orderCurrIso
				+ ", recipientCurrIso=" + recipientCurrIso + ", dealsTimeStamp=" + dealsTimeStamp
				+ ", dealAmtInOrderdingCurrIso=" + dealAmtInOrderdingCurrIso + "]";
	}

}
