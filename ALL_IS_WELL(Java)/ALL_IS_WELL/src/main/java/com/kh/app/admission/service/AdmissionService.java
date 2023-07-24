package com.kh.app.admission.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.app.admission.dao.admissionDao;
import com.kh.app.admission.vo.AdmissionVo;
import com.kh.app.operation.dao.OperationDao;
import com.kh.app.operation.service.OperationService;
import com.kh.app.page.vo.PageVo;
import com.kh.app.patient.vo.PatientVo;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@Transactional
@Slf4j
@RequiredArgsConstructor
public class AdmissionService {
	private final admissionDao dao;
	private final SqlSessionTemplate sst;
	
	
	//입원실 방 갯수 세기
	public int getRoomCount() {
		return dao.getRoomCount(sst);
	}


	//입원실 목록 가져오기
	public List<AdmissionVo> getRoomList(PageVo pv) {
		return dao.getRoomList(sst, pv);
	}


	public List<AdmissionVo> getNumberOfPatients() {
		return dao.getNumberOfPatients(sst);
	}


	public List<PatientVo> searchPatient(String name) {
		return dao.searchPatient(sst, name);
	}


	public int registerPatient(AdmissionVo vo) {
		return dao.registerPatient(sst, vo);
	}


	public int insertInpatientList(AdmissionVo vo) {
		return dao.insertInpatientList(sst, vo);
	}
	
	
}