package myApp.service;

import myApp.dao.repository.AddressRepository;
import myApp.dao.entity.Address;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AddressService {
    @Autowired
    private AddressRepository repo;

    public List<Address> listAll(){
        return (List<Address>) repo.findAll();
    }

    public void save(Address address){
        repo.save(address);
    }

    public Address get(long id){
        Optional<Address> result = repo.findById(id);
        return result.get();
    }

    public void delete(long id){
        repo.deleteById(id);
    }
}
