package myApp.Controller;

import myApp.DAO.entity.Address;
import myApp.Service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
public class MyController {
    @Autowired
    private AddressService service;
    @RequestMapping("/")
    public @ResponseBody ModelAndView home(){
        ModelAndView mav = new ModelAndView("index");
        List<Address> addressList = service.listAll();
        mav.addObject("addressList", addressList);
        return mav;
    }
    @GetMapping("newAddress")
    public String newAddressForm(Map<String, Object> model){
        model.put("Address",new Address());
        return "newAddress";
    }
    @PostMapping("saveAddress")
    public String saveAddress(@ModelAttribute("Address") Address address){
        service.save(address);
        return "redirect:/";
    }

}
