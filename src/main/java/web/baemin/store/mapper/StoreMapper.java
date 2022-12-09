package web.baemin.store.mapper;

import org.apache.ibatis.annotations.Mapper;
import web.baemin.store.dto.Menu;
import web.baemin.store.dto.Store;

import java.util.List;

@Mapper
public interface StoreMapper {

    List<Store> storeList(String food_category_cd);

    Store storeRead(String store_id);

    List<Menu> menuList(String store_id);

}
