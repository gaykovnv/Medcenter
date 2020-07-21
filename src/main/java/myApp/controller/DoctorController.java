package myApp.controller;

import myApp.dao.entity.Doctor;
import myApp.service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
public class DoctorController {
    @Autowired
    private DoctorService doctorService;

    @GetMapping("doctor")
    public @ResponseBody ModelAndView listDoctor(){
        ModelAndView mav = new ModelAndView("doctor_pages/doctor");
        List<Doctor> listDoctor = doctorService.listAll();
        mav.addObject("listDoctor",listDoctor);
        return mav;
    }

    @GetMapping("newDoctor")
    public String newDoctor(Map<String,Doctor> model) {
        model.put("doctor", new Doctor());
        return "doctor_pages/newDoctor";
    }

    @PostMapping("saveDoctor")
    public String saveDoctor(@ModelAttribute("Doctor") Doctor doctor){
        doctorService.save(doctor);
        return "redirect:/";
    }

    @GetMapping("editDoctor")
    public ModelAndView editDoctorForm(@RequestParam long id){
        ModelAndView mav = new ModelAndView("doctor_pages/editDoctor");
        Doctor doctor = doctorService.get(id);
        mav.addObject("doctor",doctor);
        return mav;
    }

    @GetMapping("deleteDoctor")
    public String deleteDoctor(@RequestParam long id){
        doctorService.delete(id);
        return "redirect:/";
    }

    @GetMapping("search")
    public ModelAndView search(@RequestParam String keyword){
        ModelAndView mav = new ModelAndView("doctor_pages/search");
        List<Doctor> result = doctorService.search(keyword);
        mav.addObject("result",result);
        return mav;
    }
}
