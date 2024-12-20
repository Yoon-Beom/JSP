package com.guri.dto;

public class ProductVO {
	private Integer code;
	private String name;
	private Integer price;
	private String pictureurl;
	private String description;
	
	public Integer getCode() { return code; }
	public void setCode(Integer code) { this.code = code; }
	
	public String getName() { return name; }
	public void setName(String name) { this.name = name; }
	
	public Integer getPrice() { return price; }
	public void setPrice(Integer price) { this.price = price; }
	
	public String getPictureurl() { return pictureurl; }
	public void setPictureurl(String pictureurl) { this.pictureurl = pictureurl; }
	
	public String getDescription() { return description; }
	public void setDescription(String description) { this.description = description; }
	
	@Override
	public String toString() {
		return "ProductVO [code=" + code + ", name=" + name + ", price=" + price + ", pictureurl=" + pictureurl
				+ ", description=" + description + "]";
	}
}
