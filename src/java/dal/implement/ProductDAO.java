/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import dal.GenericDAO;
import entity.Product;
import java.util.LinkedHashMap;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class ProductDAO extends GenericDAO<Product> {

    @Override
    public List<Product> findAll() {
        return queryGenericDAO(Product.class);
    }

    @Override
    public int insert(Product t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Product findById(Product product) {
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[image]\n"
                + "      ,[quantity]\n"
                + "      ,[price]\n"
                + "      ,[description]\n"
                + "      ,[categoryId]\n"
                + "  FROM [dbo].[Product]\n"
                + "  where id = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", product.getId());
        List<Product> list = queryGenericDAO(Product.class, sql, parameterMap);
        //neu nhu list ma empty => ko co san pham => tra ve null
        //nguoc lai list ma ko empty => co san pham => nam o vi tri dau tien => lay ve o vi tri so 0
        return list.isEmpty() ? null : list.get(0);
    }

    public List<Product> findByCategory(String categoryId) {
        String sql = "SELECT *\n"
                + "  FROM [Product]\n"
                + "  where categoryId = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("categoryId", categoryId);
        return queryGenericDAO(Product.class, sql, parameterMap);
    }

    public List<Product> findByName(String keyword) {
        String sql = "SELECT *\n"
                + "  FROM [Product]\n"
                + "  where [name] like ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("name", "%" + keyword + "%");
        return queryGenericDAO(Product.class, sql, parameterMap);
    }

}
