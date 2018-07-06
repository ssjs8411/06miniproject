package dto;

public class WishList {

	private int wishlist_no;
	private int general_member_no;
	private String general_member_name;
	private String shopping_name;
	private String shopping_addr;
	
	public int getWishlist_no() {
		return wishlist_no;
	}
	public void setWishlist_no(int wishlist_no) {
		this.wishlist_no = wishlist_no;
	}
	public int getGeneral_member_no() {
		return general_member_no;
	}
	public void setGeneral_member_no(int general_member_no) {
		this.general_member_no = general_member_no;
	}
	public String getGeneral_member_name() {
		return general_member_name;
	}
	public void setGeneral_member_name(String general_member_name) {
		this.general_member_name = general_member_name;
	}
	public String getShopping_name() {
		return shopping_name;
	}
	public void setShopping_name(String shopping_name) {
		this.shopping_name = shopping_name;
	}
	public String getShopping_addr() {
		return shopping_addr;
	}
	public void setShopping_addr(String shopping_addr) {
		this.shopping_addr = shopping_addr;
	}
}
