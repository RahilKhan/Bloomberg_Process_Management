package com.bpm.dao.impl;


import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bpm.dao.inf.DashboardDaoInf;
import com.bpm.model.DashboardBean;

@Repository("dashboardDao")
@Transactional
public class DashboardDaoImpl implements DashboardDaoInf{

//	@Autowired
//	DashboardHibernateInf dashboardHibernate;

	@Override
	public List getDashBoardDetails(String userId) {
		System.out.println("DashboardDaoImpl");

//		String getDashBoardQuery = dashboardHibernateInf.getDashBoardDetailQuery(userId);
		String getDashBoardQuery = "dashboardDao.getDashBoardDetailQuery(userId)";
		System.out.println("\tgetDashBoardQuery");
		
		List<DashboardBean> dashboardList = null;
		
		DashboardBean dashboardBean = new DashboardBean();
		dashboardBean.setPageName("DashBoard");
		dashboardBean.setSavingDetails("Total Deals Uploaded");
		dashboardBean.setSavingAmount("8000000");
		dashboardBean.setEarningDetails("Total Deals Accepted");
		dashboardBean.setEarningAmount("7900000");
		dashboardBean.setOwedDetails("Total Deals Rejected");
		dashboardBean.setOwedAmount("100000");
		dashboardBean.setExpensesDetails("Total no of dealing Currency");
		dashboardBean.setExpensesAmount("18");
		
		dashboardList = new ArrayList<DashboardBean>();
		dashboardList.add(dashboardBean);
		
		return dashboardList;
	}

}
