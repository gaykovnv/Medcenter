package myApp.dao.repository;

import myApp.dao.entity.Doctor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.NoRepositoryBean;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@NoRepositoryBean
public interface DoctorRepository extends CrudRepository<Doctor,Long> {

    @Query(value=" SELECT c FROM  Doctor c WHERE c.fname LIKE '%' OR :keyword "
            + " OR c.lname LIKE '%' OR :keyword "
            + " OR c.patronymic LIKE '%' OR :keyword "
            + " OR c.specialty LIKE '%' OR :keyword ")
    List<Doctor> search(@Param("keyword") String keyword);
}
