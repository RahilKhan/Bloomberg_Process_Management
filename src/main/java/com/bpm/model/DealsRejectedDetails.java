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
@Table(name="deals_csv_import_rej")
public class DealsRejectedDetails {

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
	
    @Column(name="FILE_NAME", nullable=true)	
	private String fileName;

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

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	@Override
	public String toString() {
		return "DealsAcceptedDetails [dealUniqueId=" + dealUniqueId + ", orderCurrIso=" + orderCurrIso
				+ ", recipientCurrIso=" + recipientCurrIso + ", dealsTimeStamp=" + dealsTimeStamp
				+ ", dealAmtInOrderdingCurrIso=" + dealAmtInOrderdingCurrIso + ", fileName=" + fileName + "]";
	}
	
}
