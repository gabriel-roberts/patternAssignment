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
@Table(name = "orders") 
@NamedQuery(name = "Orders.findAll", query = "select o from Orders o")
public class Orders {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
		
	@ManyToOne
	@JoinColumn(name="customer_id")
	private Customer customer_id;
	
	@ManyToOne
	@JoinColumn(name="book_id")
	private Book book_id;

	public Orders(Customer customer_id, Book book_id) {
		super();
		this.customer_id = customer_id;
		this.book_id = book_id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Customer getCreatedBy() {
		return customer_id;
	}

	public void setCreatedBy(Customer customer_id) {
		this.customer_id = customer_id;
	}

	public Book getUser() {
		return book_id;
	}

	public void setUser(Book book_id) {
		this.book_id = book_id;
	}
	
	
}
