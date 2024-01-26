package com.example.demo.services;

import com.example.demo.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long ID = 0;
    {
    products.add(new Product(ID++,"Iphone", "best phone ib the world", 60000, "Dnepr","Sgorg"));
    products.add(new Product(ID++,"Iphone22", "simple mobila", 50000, "Kiev","Chel"));
    }

    public List<Product> listProducts(){
        return products;
    }

    public void saveProduct(Product product){
        product.setId(ID++);
        products.add(product);
    }

    public void deleteProduct(Long id){
        products.removeIf(product -> product.getId().equals(id));
    }

    public Product getProductBuID(Long id) {
        for (Product product : products) {
            if (product.getId().equals(id)) return product;
        }
        return null;
    }
}
