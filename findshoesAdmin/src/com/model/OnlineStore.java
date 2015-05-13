package com.model;



/**
 * OnlineStore entity. @author MyEclipse Persistence Tools
 */
public class OnlineStore extends AbstractOnlineStore implements java.io.Serializable {

    // Constructors

    /** default constructor */
    public OnlineStore() {
    }

	/** minimal constructor */
    public OnlineStore(String onlineUrl, String goodsId, Double price, String defunct) {
        super(onlineUrl, goodsId, price, defunct);        
    }
    
    /** full constructor */
    public OnlineStore(String onlineUrl, String goodsId, Double price, Integer likes, String imgUrl, String storeName, String storeImg, String fromEWeb, String defunct) {
        super(onlineUrl, goodsId, price, likes, imgUrl, storeName, storeImg, fromEWeb, defunct);        
    }
   
}
