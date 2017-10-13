package online.flowers.repository;

import online.flowers.entity.CategoryEntity;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CategoryRepository extends CrudRepository<CategoryEntity, Integer>{

    public List<CategoryEntity> findByCateId(int cateId);


}
