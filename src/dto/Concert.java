package dto;

import java.util.ArrayList;

public class Concert {
	
	private String concertId;
	private String cname;
	private String artist;
	private Integer unitPrice;
	private String description;
	private String category;
	private String filename;
	private String date;
	private int quantity;
	
	public Concert() {
		
	}
	
	public Concert(String concertId, String cname, String artist, Integer unitPrice) {
		this.concertId = concertId;
		this.cname = cname;
		this.unitPrice = unitPrice;
	}
	
	public String getConcertId() {
		return concertId;
	}
	
	public void setConcertId(String concertId) {
		this.concertId = concertId;
	}
	
	public String getCname() {
		return cname;
	}
	
	public void setCname(String cname) {
		this.cname = cname;
	}
	
	public String getArtist() {
		return artist;
	}
	
	public void setArtist(String artist) {
		this.artist = artist;
	}
	public Integer getUnitPrice() {
		return unitPrice;
	}
	
	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getCategory() {
		return category;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}
	
	public String getFilename() {
		return filename;
	}
	
	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	public String getDate() {
		return date;
	}
	
	public void setDate(String date) {
		this.date = date;
	}
	
	public int getQuantity() {
		return quantity;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
}
