package com.bpm.dao.impl;


import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
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

	@Override
	public List getDashBoardDetails(String userId) {
		System.out.println("DashboardDaoImpl");
		
		Session session = getEntityManager().unwrap(Session.class);
		
		String totalDealsUploadedSql = "select count(*) from DEALS_CSV_IMPORT_TEMP";
		List<Integer> totalDealsUploadedResult = session.createSQLQuery(totalDealsUploadedSql).list();
		String totalDealsUploaded = ""+totalDealsUploadedResult.get(0);
		
		String totalDealsAcceptedSql = "select count(*) from deals_csv_import_accepted";
		List<Integer> totalDealsAcceptedResult = session.createSQLQuery(totalDealsAcceptedSql).list();
		String totalDealsAccepted = ""+totalDealsAcceptedResult.get(0);

		String totalDealsRejectedSql = "select count(*) from deals_csv_import_rej";
		List<Integer> totalDealsRejectedResult = session.createSQLQuery(totalDealsRejectedSql).list();
		String totalDealsRejected = ""+totalDealsRejectedResult.get(0);
		
		String totalOrderCurrencySql = "select count(distinct ORDER_CURR_ISO) from deals_csv_import_accepted;";
		List<Integer> totalOrderCurrencyResult = session.createSQLQuery(totalOrderCurrencySql).list();
		String totalOrderCurrency = ""+totalOrderCurrencyResult.get(0);

		System.out.println("\t totalDealsUploadedResult : " + totalDealsUploadedResult.get(0)
		+"\n\t totalDealsAcceptedResult : " + totalDealsAcceptedResult.get(0)
		+"\n\t totalDealsRejectedResult : " + totalDealsRejectedResult.get(0)
		+ "\n\t totalOrderCurrencyResult : " + totalOrderCurrencyResult.get(0));
		
		
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
		
		dashboardList = new ArrayList<DashboardDetails>();
		dashboardList.add(dashboardBean);
		
		return dashboardList;
	}

}
