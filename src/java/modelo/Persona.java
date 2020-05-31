package modelo;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Persona {

    String dui;
    String apellidos;
    String nombres;
    Connection cn;
    Statement st;
    ResultSet rs;

    public Persona() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_recurso_humano?zeroDateTimeBehavior=convertToNull", "root", "");

            } catch (SQLException ex) {
                Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public String getDui() {
        return dui;
    }

    public void setDui(String dui) {
        this.dui = dui;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public Persona(String dui, String nombre, String apellido) {
        this.apellidos = apellido;
        this.nombres = nombre;
        this.dui = dui;
    }

    public boolean insertarDatos() {
        try {
            st = cn.createStatement();
//            int estado = 0;
            int estado = st.executeUpdate("insert into tb_persona values ('" + dui + "','" + apellidos + "','" + nombres + "');");
            if (estado == 1) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        }

        return false;
    }

    public ArrayList<Persona> consultarRegistros() {
        ArrayList<Persona> person = new ArrayList();
        String miQuery = "select * from tb_persona";
        try {
            st = cn.createStatement();
            rs = st.executeQuery(miQuery);
            while (rs.next()) {
                person.add(new Persona(rs.getString("dui_persona"), rs.getString("apellido_persona"), rs.getString("nombre_persona")));

            }
        } catch (SQLException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
        return person;
    }

    public int editarDatos() {
        int condicion = 0;
        String consulta = "update tb_persona set nombre_persona='" + this.nombres + "',apellido_persona='" + this.apellidos + "' where dui_persona ='" + this.dui + "';";
        try {
            st = cn.createStatement();
            condicion = st.executeUpdate(consulta);
        } catch (SQLException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
        return condicion;
    }

    public int delete() {
        int condicion=0;
        try {
            st = cn.createStatement();
             condicion = st.executeUpdate("delete from tb_persona where dui_persona='" + this.dui + "'");
        } catch (SQLException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
        return condicion;
    }

}
