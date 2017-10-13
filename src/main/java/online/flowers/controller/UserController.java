package online.flowers.controller;

import online.flowers.entity.CategoryEntity;
import online.flowers.entity.RoleEntity;
import online.flowers.entity.UserEntity;
import online.flowers.repository.CategoryRepository;
import online.flowers.repository.UserRepository;
import online.flowers.repository.implementation.CategoryImp;
import online.flowers.service.SendConfirmationEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private CategoryRepository categoryRepository;

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String showRegister(Model model){
        model.addAttribute("user", new UserEntity());
        showCategory(model);
        return "register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String submitRegister(Model model, UserEntity user){
        showCategory(model);
        if (userRepository.findByEmail(user.getEmail()) != null){
            // email has existed
            model.addAttribute("error", "Email has existed!");
            model.addAttribute("user", user);
            return "register";
        }

        model.addAttribute("success", "success");
        RoleEntity role = new RoleEntity();
        role.setId(1);
        user.setRole(role);
        String hashPassword= passwordEncoder.encode(user.getPassword());
        String activationCode = passwordEncoder.encode(user.getEmail());
        SendConfirmationEmail sendConfirmationEmail = new SendConfirmationEmail();
        sendConfirmationEmail.sendEmail(activationCode, user.getEmail());
        user.setPassword(hashPassword);
        user.setActivationCode(activationCode);
        userRepository.save(user);
        return "activation";
    }


    @RequestMapping(value = "/activation", method = RequestMethod.GET)
    public String activateAccount (Model model, @RequestParam("code") String activationCode) {
        showCategory(model);
        String message = null;
        UserEntity user = userRepository.findByActivationCode(activationCode);

        if (user != null) {
            user.setActivationCode(null);
            userRepository.save(user);
            message = "Email has been verified successfully. Account has been activated.";
            model.addAttribute("msg", message);
        } else {
            message = "Wrong email validation input!";
            model.addAttribute("error", message );
        }

        return "activation";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLogin(Model model){
        showCategory(model);
        model.addAttribute("user", new UserEntity());
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String submitLogin(Model model,
                              UserEntity user,
                              HttpServletRequest request){

        showCategory(model);

        UserEntity userEntity = userRepository.findByEmail(user.getEmail());

        if (userEntity == null) {
            model.addAttribute("error", "Wrong email!");
            model.addAttribute("user", user);
            return "login";

        } else {

            String hashPassword = userEntity.getPassword();
            String rawPassword = user.getPassword();

            if(passwordEncoder.matches(rawPassword, hashPassword)) {
                HttpSession session = request.getSession();
                session.setAttribute("email", user.getEmail());
                return "redirect:/";
            } else {
                model.addAttribute("error", "Wrong password!");
                model.addAttribute("user", user);
                return "login";
            }
        }
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request){
        request.getSession().invalidate();
        return "redirect:/";
    }

    public void showCategory(Model model) {
        List<CategoryEntity> categoryList1 =  categoryRepository.findByCateId(1);
        List<CategoryEntity> categoryList2 =  categoryRepository.findByCateId(2);
        List<CategoryEntity> categoryList3 =  categoryRepository.findByCateId(3);

        model.addAttribute("category1", categoryList1);
        model.addAttribute("category2", categoryList2);
        model.addAttribute("category3", categoryList3);
    }

}
