package myApp.service;

import myApp.dao.repository.DoctorRepository;
import myApp.dao.entity.Doctor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class DoctorService {
    @Autowired
    private DoctorRepository repo;

    public List<Doctor> listAll(){
        return (List<Doctor>) repo.findAll();
    }

    public void save(Doctor doctor){
        repo.save(doctor);
    }

    public Doctor get(long id){
        Optional<Doctor> result = repo.findById(id);
        return result.get();
    }

    public void delete(long id){
        repo.deleteById(id);
    }
}
