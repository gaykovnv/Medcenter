package myApp.controller;


import myApp.dao.entity.Patient;
import myApp.service.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
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
        ModelAndView mav = new ModelAndView("patient_pages/patient");
        List<Patient> listPatients = patientService.listAll();
        mav.addObject("listPatients",listPatients);
        return mav;
    }

    @GetMapping("newPatient")
    public String newPatient(Map<String, Patient> model){
        model.put("patient", new Patient());
        return "patient_pages/newPatient";
    }


    @PostMapping("savePatient")
    public String savePatient(@ModelAttribute("Patient") Patient patient){
        patientService.save(patient);
        return "redirect:/";
    }

    @GetMapping("editPatient")
    public ModelAndView editPatientForm(@RequestParam long id){
        ModelAndView mav = new ModelAndView("patient_pages/editPatient");
        Patient patient = patientService.get(id);
        mav.addObject("patient", patient);
        return mav;
    }

    @GetMapping("deletePatient")
    public String deletePatientForm(@RequestParam long id){
        patientService.delete(id);
        return "redirect:/";
    }

    @GetMapping("search")
    public ModelAndView search(@RequestParam String keyword){
        ModelAndView mav = new ModelAndView("patient_pages/searchPatient");
        List<Patient> result = patientService.search(keyword);
        mav.addObject("result", result);
        return mav;
    }
}
