//
//  Product.swift
//  grocery
//
//  Created by Celio Junior on 11/05/25.
//


import Foundation

class Product {
    let name: String
    var desc: String
    var quantity: Int
    
    init(name: String, desc: String, quantity: Int) {
        self.name = name
        self.desc = desc
        self.quantity = quantity
    }
}

class Products {
    var allProducts: [Product] = [
        Product(name: "Arroz", desc: "Arroz branco tipo 1", quantity: 2),
        Product(name: "Feijão", desc: "Feijão carioca", quantity: 1),
        Product(name: "Macarrão", desc: "Macarrão espaguete", quantity: 3),
        Product(name: "Leite", desc: "Leite integral 1L", quantity: 6),
        Product(name: "Ovos", desc: "Cartela com 12 ovos", quantity: 1),
        Product(name: "Açúcar", desc: "Açúcar refinado 1kg", quantity: 2),
//        Product(name: "Café", desc: "Café moído 500g", quantity: 1),
//        Product(name: "Pão", desc: "Pão de forma integral", quantity: 1),
//        Product(name: "Detergente", desc: "Detergente líquido neutro", quantity: 2),
//        Product(name: "Sabão em pó", desc: "Sabão para roupas 800g", quantity: 1),
//        Product(name: "Shampoo", desc: "Shampoo anticaspa 400ml", quantity: 1),
//        Product(name: "Condicionador", desc: "Condicionador hidratante 400ml", quantity: 1),
//        Product(name: "Escova de dentes", desc: "Escova com cerdas macias", quantity: 2),
//        Product(name: "Papel higiênico", desc: "Pacote com 12 rolos", quantity: 1),
//        Product(name: "Sabonete", desc: "Sabonete glicerinado", quantity: 4),
//        Product(name: "Desodorante", desc: "Desodorante aerosol 150ml", quantity: 1),
//        Product(name: "Óleo de soja", desc: "Óleo de soja 900ml", quantity: 2),
//        Product(name: "Farinha de trigo", desc: "Farinha especial para bolo 1kg", quantity: 1),
//        Product(name: "Refrigerante", desc: "Refrigerante cola 2L", quantity: 2),
//        Product(name: "Suco", desc: "Suco de laranja natural 1L", quantity: 1),
//        Product(name: "Manteiga", desc: "Manteiga com sal 200g", quantity: 1),
//        Product(name: "Queijo", desc: "Queijo mussarela fatiado 200g", quantity: 1),
    ]
    
    func addProduct(_ product: Product) {
        allProducts.append(product)
    }
    
    func removeProduct(from indexPath: IndexPath) {
        allProducts.remove(at: indexPath.row)
    }
    
    func getProduct(from indexPath: IndexPath) -> Product {
        allProducts[indexPath.row]
    }
}
