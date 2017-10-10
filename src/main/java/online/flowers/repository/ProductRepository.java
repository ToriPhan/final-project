package online.flowers.repository;

import online.flowers.entity.ProductEntity;
import org.springframework.data.repository.CrudRepository;

public interface ProductRepository extends CrudRepository <ProductEntity, Integer> {
}
