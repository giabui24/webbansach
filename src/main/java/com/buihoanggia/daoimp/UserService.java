package com.buihoanggia.daoimp;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.buihoanggia.entity.CrmUser;
import com.buihoanggia.entity.User;

public interface UserService extends UserDetailsService {

    User findByUserName(String userName);

    void save(CrmUser crmUser);
    List<User> DanhSachTaiKhoan();
}
