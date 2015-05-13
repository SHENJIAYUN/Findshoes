package com.model;

import java.sql.Timestamp;


/**
 * AbstractShoes entity provides the base persistence definition of the Shoes entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractShoes  implements java.io.Serializable {


    // Fields    

     private String goodsId;
     private String brand;
     private String showDate;
     private String season;
     private Integer likes;
     private String occasion;
     private String heelHeight;
     private String toe;
     private String heelStyle;
     private String upperHeight;
     private String bootHeight;
     private String leather;
     private String sole;
     private String pattern;
     private String craft;
     private String bootMaterial;
     private String upperMaterial;
     private String color;
     private String hotPoint;
     private String fashion;
     private String style;
     private String innerMaterial;
     private String defunct;
     private Integer flag;
     private Timestamp updateTime;


    // Constructors

    /** default constructor */
    public AbstractShoes() {
    }

	/** minimal constructor */
    public AbstractShoes(String goodsId, String defunct, Integer flag) {
        this.goodsId = goodsId;
        this.defunct = defunct;
        this.flag = flag;
    }
    
    /** full constructor */
    public AbstractShoes(String goodsId, String brand, String showDate, String season, Integer likes, String occasion, String heelHeight, String toe, String heelStyle, String upperHeight, String bootHeight, String leather, String sole, String pattern, String craft, String bootMaterial, String upperMaterial, String color, String hotPoint, String fashion, String style, String innerMaterial, String defunct, Integer flag, Timestamp updateTime) {
        this.goodsId = goodsId;
        this.brand = brand;
        this.showDate = showDate;
        this.season = season;
        this.likes = likes;
        this.occasion = occasion;
        this.heelHeight = heelHeight;
        this.toe = toe;
        this.heelStyle = heelStyle;
        this.upperHeight = upperHeight;
        this.bootHeight = bootHeight;
        this.leather = leather;
        this.sole = sole;
        this.pattern = pattern;
        this.craft = craft;
        this.bootMaterial = bootMaterial;
        this.upperMaterial = upperMaterial;
        this.color = color;
        this.hotPoint = hotPoint;
        this.fashion = fashion;
        this.style = style;
        this.innerMaterial = innerMaterial;
        this.defunct = defunct;
        this.flag = flag;
        this.updateTime = updateTime;
    }

   
    // Property accessors

    public String getGoodsId() {
        return this.goodsId;
    }
    
    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId;
    }

    public String getBrand() {
        return this.brand;
    }
    
    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getShowDate() {
        return this.showDate;
    }
    
    public void setShowDate(String showDate) {
        this.showDate = showDate;
    }

    public String getSeason() {
        return this.season;
    }
    
    public void setSeason(String season) {
        this.season = season;
    }

    public Integer getLikes() {
        return this.likes;
    }
    
    public void setLikes(Integer likes) {
        this.likes = likes;
    }

    public String getOccasion() {
        return this.occasion;
    }
    
    public void setOccasion(String occasion) {
        this.occasion = occasion;
    }

    public String getHeelHeight() {
        return this.heelHeight;
    }
    
    public void setHeelHeight(String heelHeight) {
        this.heelHeight = heelHeight;
    }

    public String getToe() {
        return this.toe;
    }
    
    public void setToe(String toe) {
        this.toe = toe;
    }

    public String getHeelStyle() {
        return this.heelStyle;
    }
    
    public void setHeelStyle(String heelStyle) {
        this.heelStyle = heelStyle;
    }

    public String getUpperHeight() {
        return this.upperHeight;
    }
    
    public void setUpperHeight(String upperHeight) {
        this.upperHeight = upperHeight;
    }

    public String getBootHeight() {
        return this.bootHeight;
    }
    
    public void setBootHeight(String bootHeight) {
        this.bootHeight = bootHeight;
    }

    public String getLeather() {
        return this.leather;
    }
    
    public void setLeather(String leather) {
        this.leather = leather;
    }

    public String getSole() {
        return this.sole;
    }
    
    public void setSole(String sole) {
        this.sole = sole;
    }

    public String getPattern() {
        return this.pattern;
    }
    
    public void setPattern(String pattern) {
        this.pattern = pattern;
    }

    public String getCraft() {
        return this.craft;
    }
    
    public void setCraft(String craft) {
        this.craft = craft;
    }

    public String getBootMaterial() {
        return this.bootMaterial;
    }
    
    public void setBootMaterial(String bootMaterial) {
        this.bootMaterial = bootMaterial;
    }

    public String getUpperMaterial() {
        return this.upperMaterial;
    }
    
    public void setUpperMaterial(String upperMaterial) {
        this.upperMaterial = upperMaterial;
    }

    public String getColor() {
        return this.color;
    }
    
    public void setColor(String color) {
        this.color = color;
    }

    public String getHotPoint() {
        return this.hotPoint;
    }
    
    public void setHotPoint(String hotPoint) {
        this.hotPoint = hotPoint;
    }

    public String getFashion() {
        return this.fashion;
    }
    
    public void setFashion(String fashion) {
        this.fashion = fashion;
    }

    public String getStyle() {
        return this.style;
    }
    
    public void setStyle(String style) {
        this.style = style;
    }

    public String getInnerMaterial() {
        return this.innerMaterial;
    }
    
    public void setInnerMaterial(String innerMaterial) {
        this.innerMaterial = innerMaterial;
    }

    public String getDefunct() {
        return this.defunct;
    }
    
    public void setDefunct(String defunct) {
        this.defunct = defunct;
    }

    public Integer getFlag() {
        return this.flag;
    }
    
    public void setFlag(Integer flag) {
        this.flag = flag;
    }

    public Timestamp getUpdateTime() {
        return this.updateTime;
    }
    
    public void setUpdateTime(Timestamp updateTime) {
        this.updateTime = updateTime;
    }
   








}