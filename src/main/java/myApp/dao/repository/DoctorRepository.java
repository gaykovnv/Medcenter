package myApp.dao.repository;

import myApp.dao.entity.Doctor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.NoRepositoryBean;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DoctorRepository extends CrudRepository<Doctor,Long> {

    @Query("from Doctor d where concat(d.fname,' ',d.lname,' ',d.patronymic,' ',d.specialty)"+
            "like concat('%', :keyword,'%')")
    List<Doctor> findByKeyword(@Param("keyword") String keyword);
}
