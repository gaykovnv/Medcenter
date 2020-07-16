package myApp.Controller;


import myApp.DAO.entity.Prescription;
import myApp.Service.PrescriptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
public class PrescriptionController {
    @Autowired
    private PrescriptionService service;

    @GetMapping("prescription")
    public @ResponseBody ModelAndView listPrescription(){
        ModelAndView mav = new ModelAndView("PrescriptionPages/prescription");
        List<Prescription> listPrescription = service.listAll();
        mav.addObject("listPrescription",listPrescription);
        return mav;
    }

    @GetMapping("newPrescription")
    public String newPrescription(Map<String, Prescription> model){
        model.put("prescription", new Prescription());
        return "PrescriptionPages/newPrescription";
    }


    @PostMapping("savePrescription")
    public String savePrescription(@ModelAttribute("Prescription") Prescription prescription){
        service.save(prescription);
        return "redirect:/";
    }

    @GetMapping("editPrescription")
    public ModelAndView editPrescriptionForm(@RequestParam long id){
        ModelAndView mav = new ModelAndView("PrescriptionPages/editPrescription");
        Prescription prescription = service.get(id);
        mav.addObject("prescription", prescription);
        return mav;
    }

    @GetMapping("deletePrescription")
    public String deletePrescriptionForm(@RequestParam long id){
        service.delete(id);
        return "redirect:/";
    }

}
