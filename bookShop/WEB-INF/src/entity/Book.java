package entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;


@Entity
@Table(name = "book") 

@NamedQueries({
	@NamedQuery(name = "Book.findAll", query = "select b from Book b"),
	@NamedQuery(name = "Book.findByCategory", query = "select b from Book b where b.category=:category"),
	@NamedQuery(name = "Book.findByManufacture", query = "select b from Book b where b.manufacture=:manufacture"),
	@NamedQuery(name = "Book.findByName", query = "select b from Book b where b.bookName=:bookName")

})
public class Book {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	private String bookName;
	private String ISBN;
	private double price;
	private int stock;
	private String manufacture;
	private String category;
	private Date publicationDate;
	private String author;
	
	public Book(String bookName, String ISBN, double price, int stock,
			String manufacture, String category, Date publicationDate,String author) {
		super();
		this.bookName = bookName;
		this.ISBN = ISBN;
		this.price = price;
		this.stock = stock;
		this.manufacture = manufacture;
		this.category = category;
		this.publicationDate = publicationDate;
		this.author = author;
	}




	public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
	}




	public String getBookName() {
		return bookName;
	}




	public void setBookName(String bookName) {
		this.bookName = bookName;
	}




	public String getISBN() {
		return ISBN;
	}




	public void setISBN(String ISBN) {
		ISBN = ISBN;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public String getManufacture() {
		return manufacture;
	}

	public void setManufacture(String manufacture) {
		this.manufacture = manufacture;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Date getPublicationDate() {
		return publicationDate;
	}

	public void setPublicationDate(Date publicationDate) {
		this.publicationDate = publicationDate;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
}
