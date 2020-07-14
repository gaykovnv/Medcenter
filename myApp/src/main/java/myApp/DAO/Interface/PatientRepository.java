package myApp.DAO.Interface;

import myApp.DAO.entity.Address;
import myApp.DAO.entity.Patient;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PatientRepository extends CrudRepository<Patient,Long> {

}
