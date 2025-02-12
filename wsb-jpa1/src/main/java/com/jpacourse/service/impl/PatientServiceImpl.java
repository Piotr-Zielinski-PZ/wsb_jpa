package com.jpacourse.service.impl;
import com.jpacourse.dto.PatientTO;
import com.jpacourse.mapper.PatientMapper;
import com.jpacourse.persistence.dao.PatientDao;
import com.jpacourse.persistence.entity.PatientEntity;
import com.jpacourse.service.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;
import java.util.stream.Collectors;
import com.jpacourse.persistence.entity.VisitEntity;
import com.jpacourse.mapper.VisitMapper;
import com.jpacourse.dto.VisitTO;

@Service
@Transactional
public class PatientServiceImpl implements PatientService
{
    private final PatientDao patientDao;
    @Autowired
    public PatientServiceImpl(PatientDao pPatientDao)
    {
        patientDao = pPatientDao;
    }
    @Override
    public PatientTO findById(Long id)
    {
        final PatientEntity entity = patientDao.findOne(id);
        return PatientMapper.mapToTO(entity);
    }
    @Override
    public List<VisitTO> findVisitsByPatientId(Long id) {
        List<VisitEntity> visitEntities = patientDao.findVisitsByPatientId(id);
        return visitEntities.stream()
                .map(VisitMapper::mapToTO)
                .collect(Collectors.toList());
    }
}