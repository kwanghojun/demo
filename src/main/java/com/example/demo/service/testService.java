package com.example.demo.service;

import java.util.List;
import java.util.Map;


import com.example.demo.dao.testDao;
import com.example.demo.dto.testLowDto;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class testService {
	
	@Autowired
	public testDao testdao;
	
	public List<testLowDto> selectTest(Map<String, String> data) {
    	System.out.println("selectTest Dao..Start..!");
    	return testdao.selectTest(data);
    }
    
    public int deleteLowDataCopy(Map<String, String> param) {    	
    	System.out.println("deleteLowDataCopy Dao..Start..!");
        return testdao.deleteLowDataCopy(param);
    }
}
