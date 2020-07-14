package myApp.Controller;


import myApp.DAO.entity.Patient;
import myApp.Service.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
public class PatientController {

    @Autowired
    private PatientService patientService;

    @GetMapping("patient")
    public @ResponseBody ModelAndView listPatients(){
        ModelAndView mav = new ModelAndView("PatientPages/patient");
        List<Patient> listPatients = patientService.listAll();
        mav.addObject("listPatients",listPatients);
        return mav;
    }

    @GetMapping("newPatient")
    public String newPatient(Map<String, Patient> model){
        model.put("patient", new Patient());
        return "PatientPages/newPatient";
    }


    @PostMapping("savePatient")
    public String savePatient(@ModelAttribute("Patient") Patient patient){
        patientService.save(patient);
        return "redirect:/";
    }

    @GetMapping("editPatient")
    public ModelAndView editPatientForm(@RequestParam long id){
        ModelAndView mav = new ModelAndView("PatientPages/editPatient");
        Patient patient = patientService.get(id);
        mav.addObject("patient", patient);
        return mav;
    }

    @GetMapping("deletePatient")
    public String deletePatientForm(@RequestParam long id){
//        addressService.delete(id);
        patientService.delete(id);
        return "PatientPages/patient";
    }

}
