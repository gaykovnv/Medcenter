package myApp.dao.repository;

import myApp.dao.entity.Patient;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PatientRepository extends CrudRepository<Patient,Long> {

    @Query("from Patient p where concat(p.fname,' ',p.lname,' ',p.patronymic,' ',p.telephone)"+
            "like concat('%',:keyword,'%')")
    List<Patient> findByKeyword(@Param("keyword") String keyword);
}
