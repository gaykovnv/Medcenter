package myApp.dao.repository;

import myApp.dao.entity.Prescription;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PrescriptionRepository extends CrudRepository<Prescription,Long> {

    @Query( value=" SELECT c FROM Prescription c WHERE c.description LIKE '%' OR :keyword "
            + " OR c.priority LIKE '%' OR :keyword "
            + " OR c.deadline LIKE '%' OR :keyword " )
    List<Prescription> search(@Param("keyword") String keyword);
}
