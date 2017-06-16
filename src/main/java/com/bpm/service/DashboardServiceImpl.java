package com.bpm.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bpm.dao.inf.CurrencyDao;
import com.bpm.dao.inf.DashboardDaoInf;
import com.bpm.model.Currency;
import com.bpm.model.DashboardDetails;
import com.bpm.service.DashboardServiceInf;

@Service("dashboardService")
@Transactional
public class DashboardServiceImpl implements DashboardServiceInf{

	@Autowired
	DashboardDaoInf dashboardDao;

	@Autowired
	CurrencyDao currencyDao;
	
	@Override
	public List getDashBoardDetails() {
		System.out.println("DashboardServiceImpl");
		List<DashboardDetails> dashboardList = dashboardDao.getDashBoardDetails();
		System.out.println("\t dashboardList.size() : " + dashboardList.size() + "\n\tdashboardList : " + dashboardList.get(0).toString());
		
		List<Currency> currencyList = currencyDao.getAllCurrency();
		System.out.println("\t currencyList.size() : " + currencyList.size() + "\n\t currencyList : " + currencyList.toString());
		
		return dashboardList;
	}

	
}
