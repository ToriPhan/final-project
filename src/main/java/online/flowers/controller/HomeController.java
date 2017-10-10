package online.flowers.controller;

import online.flowers.entity.ProductEntity;
import online.flowers.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "/")

public class HomeController {

    @Autowired
    private ProductRepository productRepository;


@RequestMapping()
    public String showProducts (Model model) {
        List<ProductEntity> products = (List<ProductEntity>) productRepository.findAll();
        model.addAttribute("products", products);
        return "index";
    }
}
