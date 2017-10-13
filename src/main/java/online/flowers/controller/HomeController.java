package online.flowers.controller;


import online.flowers.entity.CategoryEntity;
import online.flowers.entity.ProductEntity;
import online.flowers.repository.CategoryRepository;
import online.flowers.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/")

public class HomeController {

    private static final int dataPerPage = 6;


    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    @RequestMapping()
    public String showProducts(Model model) {
        List<ProductEntity> products = (List<ProductEntity>) productRepository.findAll();
        model.addAttribute("products", products);
        showCategory(model);
        return "index";

    }

    @RequestMapping(value = "/detail")
    public String showDetail(Model model, @RequestParam("id") String id) {
        ProductEntity productEntity = productRepository.findOne(Integer.valueOf(id));
        model.addAttribute("product", productEntity);
        showCategory(model);
        return "single";
    }

    @RequestMapping(value = "/category")
    public String showCategory(Model model, @RequestParam("id") String id) {
        List<ProductEntity> productList = productRepository.findByCategoryId(Integer.valueOf(id));
        model.addAttribute("productList", productList);
        showNewFlowers(model);
        showCategory(model);
        return "products";

    }

    @RequestMapping(value = "/category/page")
    @ResponseBody
    public String viewCategoryPaging(
            @RequestParam("id") String id,
            @RequestParam("page") String page,
            Model model
    ) {
        int categoryId = Integer.parseInt(id);
        List<ProductEntity> productList =
                productRepository.findByCategoryId(categoryId);
        List<ProductEntity> result =
                getProductViaPaging(productList, Integer.parseInt(page));
        String data = "";
        for (ProductEntity product : result) {
            data += "<div class=\"col-md-4 new-collections-grid\">"+
                    "                            <div class=\"new-collections-grid1 animated wow slideInUp\" data-wow-delay=\".5s\">"+
                    "                                <div class=\"new-collections-grid1-image\">"+
                    "                                    <a href=\"/detail?id=" + product.getId() + "class=\"product-image\"><img src=\"/resources/images/newflowers/"+ product.getPhotoList().get(0).getPath()+" alt=\" \" class=\"img-responsive\" /></a>"+
                    "                                    <div class=\"new-collections-grid1-image-pos\">"+
                    "                                        <a href=\"/detail?id=" + product.getId() +">Quick View</a>"+
                    "                                    </div>"+
                    "                                    <div class=\"new-collections-grid1-right\">"+
                    "                                        <div class=\"rating\">"+
                    "                                            <div class=\"rating-left\">"+
                    "                                                <img src=\"/resources/images/2.png\" alt=\" \" class=\"img-responsive\" />"+
                    "                                            </div>"+
                    "                                            <div class=\"rating-left\">"+
                    "                                                <img src=\"/resources/images/2.png\" alt=\" \" class=\"img-responsive\" />"+
                    "                                            </div>"+
                    "                                            <div class=\"rating-left\">"+
                    "                                                <img src=\"/resources/images/2.png\" alt=\" \" class=\"img-responsive\" />"+
                    "                                            </div>"+
                    "                                            <div class=\"rating-left\">"+
                    "                                                <img src=\"/resources/images/1.png\" alt=\" \" class=\"img-responsive\" />"+
                    "                                            </div>"+
                    "                                            <div class=\"rating-left\">"+
                    "                                                <img src=\"/resources/images/1.png\" alt=\" \" class=\"img-responsive\" />"+
                    "                                            </div>"+
                    "                                            <div class=\"clearfix\"> </div>"+
                    "                                        </div>"+
                    "                                    </div>"+
                    "                                </div>"+
                    "                                <h4><a href=\"/detail?id="+ product.getId() + "\">"+ product.getName()+"</a></h4>"+
                    "                                <div class=\"new-collections-grid1-left simpleCart_shelfItem\">"+
                    "                                    <p><span class=\"item_price\">$" + product.getPrice() +"</span><a class=\"item_add\" href=\"#\">add to cart </a></p>"+
                    "                                </div>"+
                    "                            </div>"+
                    "                        </div>";


        }

            return data;
    }


        private List<ProductEntity> getProductViaPaging (
                List <ProductEntity> productList,
        int page){
            List<ProductEntity> result = new ArrayList<>();
            int start = (page - 1) * dataPerPage;
            for (int i = start; i < start + dataPerPage; i++) {
                result.add(productList.get(i));
            }
            return result;
        }

    public void showNewFlowers(Model model) {
        List<ProductEntity> newProducts = productRepository.findByCategoryId(12);
        model.addAttribute("newProducts", newProducts);
    }

    public void showCategory(Model model) {
        List<CategoryEntity> categoryList1 = categoryRepository.findByCateId(1);
        List<CategoryEntity> categoryList2 = categoryRepository.findByCateId(2);
        List<CategoryEntity> categoryList3 = categoryRepository.findByCateId(3);

        model.addAttribute("category1", categoryList1);
        model.addAttribute("category2", categoryList2);
        model.addAttribute("category3", categoryList3);
    }
}


