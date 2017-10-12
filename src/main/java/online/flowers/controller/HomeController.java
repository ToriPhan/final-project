package online.flowers.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import online.flowers.entity.CategoryEntity;
import online.flowers.entity.ProductEntity;
import online.flowers.repository.CategoryRepository;
import online.flowers.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/")

public class HomeController {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private CategoryRepository categoryRepository;


    @RequestMapping()
    public String showProducts (Model model) {
        List<ProductEntity> products = (List<ProductEntity>) productRepository.findAll();
        model.addAttribute("products", products);

        List<CategoryEntity> categoryList = (List<CategoryEntity>) categoryRepository.findAll();

        List<CategoryEntity> category1 = new ArrayList();

        for (int i = 0; i < categoryList.size(); i++) {
            if (categoryList.)

        }
        model.addAttribute("category", categoryList);
        return "index";

    }

    @RequestMapping(value = "/detail")
    public String showDetail (Model model, @RequestParam("id") String id) {
    ProductEntity productEntity = productRepository.findOne(Integer.valueOf(id));
    model.addAttribute("product", productEntity);
    return "single";
    }


}
