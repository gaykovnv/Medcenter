package myApp.controller;

import myApp.dao.entity.Address;
import myApp.service.AddressService;
import myApp.service.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
public class AddressController {

    @Autowired
    private AddressService addressService;

    @GetMapping("/")
    public String home(){
        return "index";
    }

    @GetMapping("newAddress")
    public String newAddressForm(Map<String, Object> model){
        model.put("address",new Address());

        return "address_pages/newAddress";
    }

    @PostMapping("saveAddress")
    public String saveAddress(@ModelAttribute("Address") Address address){
        addressService.save(address);
        return "redirect:/";
    }

    @GetMapping("editAddress")
    public ModelAndView editAddressForm(@RequestParam long id){
        ModelAndView mav = new ModelAndView("address_pages/editAddress");
        Address address = addressService.get(id);
        mav.addObject("address",address);
        return mav;
    }

    @GetMapping("deleteAddress")
    public String deleteAddress(@RequestParam long id){
        addressService.delete(id);
        return "redirect:/";
    }

}
