package entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "comments") 
@NamedQuery(name = "Comments.findAll", query = "select c from comments c")
public class Comments {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	private String comment;
	private int rateing;
		
	@ManyToOne
	@JoinColumn(name="customer_id")
	private Customer customer_id;
	
	@ManyToOne
	@JoinColumn(name="book_id")
	private Book book_id;
	
	public Comments(String comment, int rateing, Customer customer_id,
			Book book_id) {
		super();
		this.comment = comment;
		this.rateing = rateing;
		this.customer_id = customer_id;
		this.book_id = book_id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public int getRateing() {
		return rateing;
	}

	public void setRateing(int rateing) {
		this.rateing = rateing;
	}

	public Customer getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(Customer customer_id) {
		this.customer_id = customer_id;
	}

	public Book getBook_id() {
		return book_id;
	}

	public void setBook_id(Book book_id) {
		this.book_id = book_id;
	}
	
	
}