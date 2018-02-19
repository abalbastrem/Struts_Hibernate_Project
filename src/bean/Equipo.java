package bean;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Equipo {
		
	@Id
	@GeneratedValue
	private int id;
	private String nombre;
	@OneToMany
	private List<Jugador> jugadores = new ArrayList<>();
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the nombre
	 */
	public String getNombre() {
		return nombre;
	}
	/**
	 * @param nombre the nombre to set
	 */
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	/**
	 * @return the jugadores
	 */
	public List<Jugador> getJugadores() {
		return jugadores;
	}
	/**
	 * @param jugadores the jugadores to set
	 */
	public void setJugadores(List<Jugador> jugadores) {
		this.jugadores = jugadores;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Equipo [id=" + id + ", nombre=" + nombre + ", jugadores=" + jugadores + "]";
	}
	
}
