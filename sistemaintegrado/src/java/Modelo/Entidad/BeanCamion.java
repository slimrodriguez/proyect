
package Modelo.Entidad;

/**
 *
 * @author 
 */
public class BeanCamion {
    
    
    private String color;
    private String marca;
    private String linea;
    private String modelo;
    private String nromotor;
    private String nrochasis;
    private String placa;
    private String soat;
    private String tecnomecanica;

    public BeanCamion(String color, String marca, String linea, String modelo, String nromotor,String nrochasis, String placa, String soat, String tecnomecanica ) {
        
        this.color = color;
        this.marca = marca;
        this.linea = linea;
        this.modelo = modelo;
        this.nromotor = nromotor;
        this.nrochasis = nrochasis;
        this.placa = placa;
        this.soat = soat;
        this.tecnomecanica = tecnomecanica;
        
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getLinea() {
        return linea;
    }

    public void setLinea(String linea) {
        this.linea = linea;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getNromotor() {
        return nromotor;
    }

    public void setNromotor(String nromotor) {
        this.nromotor = nromotor;
    }

    public String getNrochasis() {
        return nrochasis;
    }

    public void setNrochasis(String nrochasis) {
        this.nrochasis = nrochasis;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getSoat() {
        return soat;
    }

    public void setSoat(String soat) {
        this.soat = soat;
    }

    public String getTecnomecanica() {
        return tecnomecanica;
    }

    public void setTecnomecanica(String tecnomecanica) {
        this.tecnomecanica = tecnomecanica;
    }
}