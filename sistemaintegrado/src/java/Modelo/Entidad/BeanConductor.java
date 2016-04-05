
package Modelo.Entidad;

/**
 *
 * @author 
 */
public class BeanConductor {
    
    private Integer idconductores; 
    private String nombre;
    private String apellido;
    private String cedula;
    private String direccion;
    private String telefono;
    private String celular;
    private String categoria;
    private String vencimiento;
    public BeanConductor(Integer idconductores,String nombre, String apellido, String cedula, String direccion, String telefono,String celular, String categoria, String vencimiento ) {
        
        this.idconductores = idconductores;
        this.nombre = nombre;
        this.apellido = apellido;
        this.cedula = cedula;
        this.direccion = direccion;
        this.telefono = telefono;
        this.categoria = categoria;
        this.vencimiento = vencimiento;
        this.celular = celular;
    }

    public BeanConductor(Integer idconductores) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public BeanConductor(String nombre, String apellido, String cedula, String direccion, String telefono, String celular, String categoria, String vencimiento) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public Integer getIdconductores() {
        return idconductores;
    }

    public void setIdconductores(Integer idconductores) {
        this.idconductores = idconductores;
    }
   

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getVencimiento() {
        return vencimiento;
    }

    public void setVencimiento(String vencimiento) {
        this.vencimiento = vencimiento;
    }

    
}