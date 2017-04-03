package xyz.kots.donordp.dao;

import xyz.kots.donordp.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleDao extends JpaRepository<Role, Long> {
}
