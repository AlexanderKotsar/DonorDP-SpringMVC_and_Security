package xyz.kots.donordp.service;

import xyz.kots.donordp.model.User;

/**
 * Service class for {@link xyz.kots.donordp.model.User}
 */

public interface UserService {

    void save(User user);

    User findByUsername(String username);
}
