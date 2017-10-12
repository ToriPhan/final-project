package online.flowers.controller;

import online.flowers.entity.ProductEntity;
import online.flowers.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

    @RequestMapping(value = "/detail")
    public String showDetail (Model model, @RequestParam("id") String id) {
    ProductEntity productEntity = productRepository.findOne(Integer.valueOf(id));
    model.addAttribute("product", productEntity);
    return "single";
    }
}
