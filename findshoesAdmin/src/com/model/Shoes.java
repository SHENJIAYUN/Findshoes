package com.model;

import java.sql.Timestamp;


/**
 * Shoes entity. @author MyEclipse Persistence Tools
 */
public class Shoes extends AbstractShoes implements java.io.Serializable {

    // Constructors

    /** default constructor */
    public Shoes() {
    }

	/** minimal constructor */
    public Shoes(String goodsId, String defunct, Integer flag) {
        super(goodsId, defunct, flag);        
    }
    
    /** full constructor */
    public Shoes(String goodsId, String brand, String showDate, String season, Integer likes, String occasion, String heelHeight, String toe, String heelStyle, String upperHeight, String bootHeight, String leather, String sole, String pattern, String craft, String bootMaterial, String upperMaterial, String color, String hotPoint, String fashion, String style, String innerMaterial, String defunct, Integer flag, Timestamp updateTime) {
        super(goodsId, brand, showDate, season, likes, occasion, heelHeight, toe, heelStyle, upperHeight, bootHeight, leather, sole, pattern, craft, bootMaterial, upperMaterial, color, hotPoint, fashion, style, innerMaterial, defunct, flag, updateTime);        
    }
   
}
