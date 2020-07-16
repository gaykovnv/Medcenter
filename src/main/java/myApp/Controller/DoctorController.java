package myApp.Controller;

import myApp.DAO.entity.Doctor;
import myApp.Service.DoctorService;
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
        ModelAndView mav = new ModelAndView("DoctorPages/doctor");
        List<Doctor> listDoctor = doctorService.listAll();
        mav.addObject("listDoctor",listDoctor);
        return mav;
    }

    @GetMapping("newDoctor")
    public String newDoctor(Map<String,Doctor> model) {
        model.put("doctor", new Doctor());
        return "DoctorPages/newDoctor";
    }

    @PostMapping("saveDoctor")
    public String saveDoctor(@ModelAttribute("Doctor") Doctor doctor){
        doctorService.save(doctor);
        return "redirect:/";
    }

    @GetMapping("editDoctor")
    public ModelAndView editDoctorForm(@RequestParam long id){
        ModelAndView mav = new ModelAndView("DoctorPages/editDoctor");
        Doctor doctor = doctorService.get(id);
        mav.addObject("doctor",doctor);
        return mav;
    }

    @GetMapping("deleteDoctor")
    public String deleteDoctor(@RequestParam long id){
        doctorService.delete(id);
        return "redirect:/";
    }
}
