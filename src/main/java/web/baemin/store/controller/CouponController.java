package web.baemin.store.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import web.baemin.store.dto.Coupon;
import web.baemin.store.service.StoreService;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/coupon/")
@RequiredArgsConstructor
public class CouponController {

    private final StoreService storeService;

    @GetMapping(value = "/list", produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<List<Coupon>> list() {
        List<Coupon> couponList = storeService.couponList();

        return new ResponseEntity<>( couponList, HttpStatus.OK);
    }



}
