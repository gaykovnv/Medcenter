package myApp.dao.repository;

import myApp.dao.entity.Patient;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PatientRepository extends CrudRepository<Patient,Long> {

    @Query( value=" SELECT c FROM Patient c WHERE c.fname LIKE '%' OR :keyword "
            + " OR c.lname LIKE '%' OR :keyword "
            + " OR c.patronymic LIKE '%' OR :keyword ")
    List<Patient> search(@Param("keyword") String keyword);
}
