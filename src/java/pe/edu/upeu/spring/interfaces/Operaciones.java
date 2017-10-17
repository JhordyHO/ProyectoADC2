/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.spring.interfaces;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Jose Rayo
 */
public interface Operaciones<Entidad> {
    public int create(Entidad d);
    public int update(Entidad d);
    public int delete(int id);
    public List<Entidad> readAll();
    public List<Entidad> buscar(int id);
    public ArrayList<Map<String, Object>> listar();
}
