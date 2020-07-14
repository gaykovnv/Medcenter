package myApp.Controller;

import myApp.DAO.entity.Address;
import myApp.DAO.entity.Patient;
import myApp.Service.AddressService;
import myApp.Service.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
public class AddressController {
    @Autowired
    private PatientService patientService;
    @Autowired
    private AddressService addressService;
    @RequestMapping("/")
    public @ResponseBody ModelAndView home(){
        ModelAndView mav = new ModelAndView("index");
        List<Address> addressList = addressService.listAll();
        mav.addObject("addressList", addressList);
        return mav;
    }
    @GetMapping("newAddress")
    public String newAddressForm(Map<String, Object> model){
        model.put("address",new Address());

        return "newAddress";
    }

    @PostMapping("saveAddress")
    public String saveAddress(@ModelAttribute("Address") Address address){
        addressService.save(address);
        return "redirect:/";
    }

    @GetMapping("editAddress")
    public ModelAndView editAddressForm(@RequestParam long id){
        ModelAndView mav = new ModelAndView("editAddress");
        Address address = addressService.get(id);
        mav.addObject("address",address);
        return mav;
    }

    @GetMapping("deleteAddress")
    public String deleteAddress(@RequestParam long id){
        patientService.delete(id);
        addressService.delete(id);
        return "redirect:/";
    }

}
