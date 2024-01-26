package com.example.demo.models;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Product {
    private Long id;
    private String title; //Заголовок товара
    private String description; //описани
    private int price;
    private String city;
    private String author;
}
