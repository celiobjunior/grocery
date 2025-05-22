//
//  TableViewController.swift
//  grocery
//
//  Created by Celio Junior on 11/05/25.
//

import UIKit



class TableViewController: UIViewController
{
    @IBOutlet weak var tableView: UITableView!
    var groceryProducts = Products()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = editButtonItem
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: true)
        tableView.setEditing(editing, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as? AddProductController {
            addVC.delegate = self
        }
    }
}

extension TableViewController: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let content = groceryProducts.getProduct(from: indexPath)
        content.isSelected.toggle()
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
    {
        let contextItem = UIContextualAction(
            style: .destructive,
            title: "Delete"
        )
        {
            UIContextualAction, view, boolValue in
            self.groceryProducts.removeProduct(from: indexPath)
            self.tableView.reloadData()
        }
        
        let swipeActions = UISwipeActionsConfiguration(actions: [contextItem])
        
        return swipeActions
    }
}

extension TableViewController: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return groceryProducts.allProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "cell-identifier",
            for: indexPath
        ) as! ProductTableViewCell
        
        let content = groceryProducts.getProduct(from: indexPath)
        
        cell.titleLabel?.text = content.name
        cell.subtitleLabel?.text = content.desc
        cell.quantityLabel?.text = "\(content.quantity)"
        cell.accessoryType = content.isSelected ? .checkmark : .none
        cell.selectionStyle = .none
        
        return cell
    }
}

extension TableViewController: AddProductDelegate
{
    func addProduct(product: Product) {
        self.groceryProducts.addProduct(product)
        self.tableView.reloadData()
        print("entrou no add product")
        print(product)
    }
}
