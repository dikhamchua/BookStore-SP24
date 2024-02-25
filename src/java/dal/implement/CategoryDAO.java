/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import dal.GenericDAO;
import entity.Category;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class CategoryDAO extends GenericDAO<Category>{

    @Override
    public List<Category> findAll() {
        return queryGenericDAO(Category.class);
    }

    @Override
    public int insert(Category t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
