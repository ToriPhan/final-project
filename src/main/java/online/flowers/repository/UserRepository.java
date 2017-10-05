package online.flowers.repository;


import org.springframework.data.repository.CrudRepository;
import online.flowers.entity.UserEntity;


public interface UserRepository extends CrudRepository <UserEntity, Integer> {

    public UserEntity findByEmail(String email);
    public UserEntity findByEmailAndPassword(String email, String password);

}
