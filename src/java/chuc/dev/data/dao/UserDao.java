package chuc.dev.data.dao;
import java.util.List;
import toan.dev.data.model.User;

public interface UserDao {

	public boolean insert(User user);
	public boolean update(User user);
	public boolean delete(int userId);
	public User find(int userId);
        public User findEmail(String userEmail);
	public List<User> findAll();
}