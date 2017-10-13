package online.flowers.repository;

import online.flowers.entity.CategoryEntity;
import online.flowers.entity.ProductEntity;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ProductRepository extends CrudRepository <ProductEntity, Integer> {
    public List<ProductEntity> findByCategoryId(int id);
}
