package myApp.service;

import myApp.dao.repository.PatientRepository;
import myApp.dao.entity.Patient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PatientService {
    @Autowired
    private PatientRepository repo;

    public List<Patient> listAll(){
        return (List<Patient>) repo.findAll();
    }

    public void save(Patient patient){
        repo.save(patient);
    }

    public Patient get(long id){
        Optional<Patient> result = repo.findById(id);
        return result.get();
    }

    public void delete(long id){
        repo.deleteById(id);
    }
}
