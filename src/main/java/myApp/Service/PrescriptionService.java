package myApp.Service;

import myApp.DAO.Interface.PrescriptionRepository;
import myApp.DAO.entity.Patient;
import myApp.DAO.entity.Prescription;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PrescriptionService {
    @Autowired
    private PrescriptionRepository repo;

    public List<Prescription> listAll(){
        return (List<Prescription>) repo.findAll();
    }

    public void save(Prescription prescription){
        repo.save(prescription);
    }

    public Prescription get(long id){
        Optional<Prescription> result = repo.findById(id);
        return result.get();
    }

    public void delete(long id){
        repo.deleteById(id);
    }
}
