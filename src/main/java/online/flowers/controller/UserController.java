package online.flowers.controller;

import online.flowers.entity.RoleEntity;
import online.flowers.entity.UserEntity;
import online.flowers.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
public class UserController {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    PasswordEncoder passwordEncoder;

    @RequestMapping(value = "/register",
            method = RequestMethod.GET)
    public String showRegister(Model model){
        model.addAttribute("user", new UserEntity());
        return "register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String submitRegister(Model model, UserEntity user){
        if (userRepository.findByEmail(user.getEmail()) != null){
            // email existing
            model.addAttribute("error", "Email has existed");
            model.addAttribute("user", user);
            return "register";
        }
        RoleEntity role = new RoleEntity();
        role.setId(1);
        user.setRole(role);
        String hashPassword= passwordEncoder.encode(user.getPassword());
        user.setPassword(hashPassword);
        userRepository.save(user);
        return "redirect:/";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLogin(Model model){
        model.addAttribute("user", new UserEntity());
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String submitLogin(Model model,
                              UserEntity user,
                              HttpServletRequest request){
        UserEntity foundUser = userRepository.findByEmailAndPassword(
                user.getEmail(), passwordEncoder.encode(user.getPassword()));
        if (foundUser == null) {
            // login failed
            model.addAttribute("error", "Login failed");
            model.addAttribute("user", user);
            return "login";
        }

        // login success
        HttpSession session = request.getSession();
        session.setAttribute("email", user.getEmail());
        return "redirect:/";
    }
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request){
        request.getSession().invalidate();
        return "redirect:/";
    }

}
