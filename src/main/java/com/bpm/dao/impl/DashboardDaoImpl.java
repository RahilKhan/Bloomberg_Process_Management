package com.bpm.dao.impl;


import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.transform.Transformers;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bpm.dao.inf.AbstractDao;
import com.bpm.dao.inf.CurrencyDao;
import com.bpm.dao.inf.DashboardDaoInf;
import com.bpm.model.Currency;
import com.bpm.model.DashboardDetails;

@Repository("dashboardDao")
@Transactional
public class DashboardDaoImpl extends AbstractDao<Integer, DashboardDetails> implements DashboardDaoInf{
	private static Logger log = Logger.getLogger(DashboardDaoImpl.class.getName()); 
	
	@SuppressWarnings("rawtypes")
	@Override
	public List getDashBoardDetails(String userId) {
		log.info("DashboardDaoImpl");
		
		Session session = getEntityManager().unwrap(Session.class);
		
		@SuppressWarnings("unchecked")
		List<Integer> totalDealsUploadedResultList = getEntityManager()
                .createQuery("SELECT count(dtd.dealUniqueId) FROM DealsTempDetails dtd")
                .getResultList();
		String totalDealsUploaded = ""+totalDealsUploadedResultList.get(0);
		 
		@SuppressWarnings("unchecked")
		List<Integer> totalDealsAcceptedResultList = getEntityManager()
                .createQuery("SELECT count(dcd.dealUniqueId) FROM DealsAcceptedDetails dcd")
                .getResultList();
		String totalDealsAccepted = ""+totalDealsAcceptedResultList.get(0);

		@SuppressWarnings("unchecked")
		List<Integer> totalDealsRejectedResultList = getEntityManager()
                .createQuery("SELECT count(drd.dealUniqueId) FROM DealsRejectedDetails drd")
                .getResultList();
		String totalDealsRejected = ""+totalDealsRejectedResultList.get(0);

		@SuppressWarnings("unchecked")
		List<Integer> totalOrderCurrencyResultList = getEntityManager()
                .createQuery("SELECT count(distinct dcd.orderCurrIso) FROM DealsAcceptedDetails dcd")
                .getResultList();
		String totalOrderCurrency = ""+totalOrderCurrencyResultList.get(0);

		String dealsPerCurrencySql = "select dcia.order_curr_iso, count(dcia.order_curr_iso) "
				+ " from deals_csv_import_accepted dcia, currency curr " 
				+ " where curr.CURRENCY_ISO_CODE = dcia.order_curr_iso "
				+ " group by dcia.ORDER_CURR_ISO ";
		List<List<Object>> dealsPerCurrencyResult = session.createSQLQuery(dealsPerCurrencySql).setResultTransformer(Transformers.TO_LIST).list();
		
		Map<String,Integer> dealsPerCurrencyMap = new HashMap();
		for (List<Object> object : dealsPerCurrencyResult) {
			dealsPerCurrencyMap.put((String)object.get(0),((BigInteger) object.get(1)).intValue());
		}
		
		System.out.println("\t totalDealsUploadedResult : " + totalDealsUploadedResultList.get(0)
		+"\n\t totalDealsAcceptedResult : " + totalDealsAcceptedResultList.get(0)
		+"\n\t totalDealsRejectedResult : " + totalDealsRejectedResultList.get(0)
		+ "\n\t totalOrderCurrencyResult : " + totalOrderCurrencyResultList.get(0)
		+ "\n\t dealsPerCurrencyMap : " + dealsPerCurrencyMap.toString()
		);
		
		
		List<DashboardDetails> dashboardList = null;
		DashboardDetails dashboardBean = new DashboardDetails();
		dashboardBean.setPageName("DashBoard");
		dashboardBean.setSavingDetails("Total Deals Uploaded");
		dashboardBean.setSavingAmount(totalDealsUploaded);
		dashboardBean.setEarningDetails("Total Deals Accepted");
		dashboardBean.setEarningAmount(totalDealsAccepted);
		dashboardBean.setOwedDetails("Total Deals Rejected");
		dashboardBean.setOwedAmount(totalDealsRejected);
		dashboardBean.setExpensesDetails("Total no of dealing Currency");
		dashboardBean.setExpensesAmount(totalOrderCurrency);
		dashboardBean.setDealsPerCurrencyMap(dealsPerCurrencyMap);
		
		
		dashboardList = new ArrayList<DashboardDetails>();
		dashboardList.add(dashboardBean);
		
		return dashboardList;
	}

}
