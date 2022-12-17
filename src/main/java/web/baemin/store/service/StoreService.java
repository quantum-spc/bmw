package web.baemin.store.service;

import web.baemin.store.dto.Coupon;
import web.baemin.store.dto.Menu;
import web.baemin.store.dto.Store;

import java.util.List;

public interface StoreService {
    List<Store> storeList(String food_category_cd);

    Store storeRead(String store_id);

    List<Menu> menuList(String store_id);

    List<Coupon> couponList();


}
