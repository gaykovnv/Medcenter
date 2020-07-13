package myApp.Service;

import myApp.DAO.Interface.AddressRepository;
import myApp.DAO.entity.Address;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
}
