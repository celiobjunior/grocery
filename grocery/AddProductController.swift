//
//  AddProductController.swift
//  grocery
//
//  Created by Celio Junior on 11/05/25.
//

import UIKit

protocol AddProductDelegate {
    func addProduct(product: Product)
}

class AddProductController: UIViewController
{
    var delegate: AddProductDelegate?
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var descTF: UITextField!
    @IBOutlet weak var quantityTF: UITextField!
    @IBOutlet weak var addListButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameTF.delegate = self
        self.descTF.delegate = self
        self.quantityTF.delegate = self
        
        nameTF.placeholder = "name"
        descTF.placeholder = "description"
        quantityTF.placeholder = "quantity"

        // Verifica se o dispositivo suporta a versão mínima do iOS (iOS 15) e configura a apresentação modal com base nisso
        if #available(iOS 15.0, *),
            let sheet = self.sheetPresentationController {

                // Define as alturas de detenção disponíveis para a apresentação modal
                sheet.detents = [.medium(), . large()]
            
                // Define se a alça de arrasto será exibida na apresentação modal
                sheet.prefersGrabberVisible = true
        }
    }

    @IBAction func addNewProduct(_ sender: Any) {
        guard let name = nameTF.text, nameTF.hasText else {
            print("O nome do produto não pode estar vazio.")
            return
        }
        
        guard let desc = descTF.text, descTF.hasText else {
            print("A descrição do produto não pode estar vazia.")
            return
        }
        
        guard let q = quantityTF.text, quantityTF.hasText, let quantity = Int(q) else {
            print("Digite uma quantidade válida.")
            return
        }
        
        let newProduct = Product(
            name: name,
            desc: desc,
            quantity: quantity
        )
        
        nameTF.text = ""
        descTF.text = ""
        quantityTF.text = ""
        
        delegate?.addProduct(product: newProduct)
     }
}

extension AddProductController: UITextFieldDelegate
{
}
