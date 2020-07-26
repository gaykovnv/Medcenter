package myApp.dao.repository;

import myApp.dao.entity.Prescription;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PrescriptionRepository extends CrudRepository<Prescription,Long> {

    @Query("from Prescription p where concat(p.description,' ',p.priority,' ',p.deadline)"+
            "like concat('%', :keyword,'%')")
    List<Prescription> findByKeyword(@Param("keyword") String keyword);
}
