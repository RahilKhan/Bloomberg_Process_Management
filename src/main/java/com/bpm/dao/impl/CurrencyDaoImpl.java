package com.bpm.dao.impl;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.transform.Transformers;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bpm.dao.inf.AbstractDao;
import com.bpm.dao.inf.CurrencyDao;
import com.bpm.model.Currency;
 
 
@Repository("currencyDao")
@Transactional
public class CurrencyDaoImpl extends AbstractDao<Integer, Currency> implements CurrencyDao {
	private static Logger log = Logger.getLogger(CurrencyDaoImpl.class.getName()); 
	
	@Override
	@SuppressWarnings("unchecked")
	public List<Currency> getAllCurrency() {
		List<Currency> currencies = getEntityManager()
                .createQuery("SELECT curr FROM Currency curr ORDER BY curr.currencyIsoCode ASC")
                .getResultList();
        return currencies;
	}
 
    //An alternative to Hibernate.initialize()
    protected void initializeCollection(Collection<?> collection) {
        if(collection == null) {
            return;
        }
        collection.iterator().hasNext();
    }
    
	
}
