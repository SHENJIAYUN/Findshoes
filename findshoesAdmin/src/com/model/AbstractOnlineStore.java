package com.model;



/**
 * AbstractOnlineStore entity provides the base persistence definition of the OnlineStore entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractOnlineStore  implements java.io.Serializable {


    // Fields    

     private String onlineUrl;
     private String goodsId;
     private Double price;
     private Integer likes;
     private String imgUrl;
     private String storeName;
     private String storeImg;
     private String fromEWeb;
     private String defunct;


    // Constructors

    /** default constructor */
    public AbstractOnlineStore() {
    }

	/** minimal constructor */
    public AbstractOnlineStore(String onlineUrl, String goodsId, Double price, String defunct) {
        this.onlineUrl = onlineUrl;
        this.goodsId = goodsId;
        this.price = price;
        this.defunct = defunct;
    }
    
    /** full constructor */
    public AbstractOnlineStore(String onlineUrl, String goodsId, Double price, Integer likes, String imgUrl, String storeName, String storeImg, String fromEWeb, String defunct) {
        this.onlineUrl = onlineUrl;
        this.goodsId = goodsId;
        this.price = price;
        this.likes = likes;
        this.imgUrl = imgUrl;
        this.storeName = storeName;
        this.storeImg = storeImg;
        this.fromEWeb = fromEWeb;
        this.defunct = defunct;
    }

   
    // Property accessors

    public String getOnlineUrl() {
        return this.onlineUrl;
    }
    
    public void setOnlineUrl(String onlineUrl) {
        this.onlineUrl = onlineUrl;
    }

    public String getGoodsId() {
        return this.goodsId;
    }
    
    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId;
    }

    public Double getPrice() {
        return this.price;
    }
    
    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getLikes() {
        return this.likes;
    }
    
    public void setLikes(Integer likes) {
        this.likes = likes;
    }

    public String getImgUrl() {
        return this.imgUrl;
    }
    
    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public String getStoreName() {
        return this.storeName;
    }
    
    public void setStoreName(String storeName) {
        this.storeName = storeName;
    }

    public String getStoreImg() {
        return this.storeImg;
    }
    
    public void setStoreImg(String storeImg) {
        this.storeImg = storeImg;
    }

    public String getFromEWeb() {
        return this.fromEWeb;
    }
    
    public void setFromEWeb(String fromEWeb) {
        this.fromEWeb = fromEWeb;
    }

    public String getDefunct() {
        return this.defunct;
    }
    
    public void setDefunct(String defunct) {
        this.defunct = defunct;
    }
   








}