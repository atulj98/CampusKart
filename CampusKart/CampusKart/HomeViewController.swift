//
//  HomeViewController.swift
//  CampusKart
//
//  Created by Atul Kumar on 18/01/24.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var productDisplayTableView: UITableView!
    
    var myProducts = productDataModel.getProduct()
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        myProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductTableViewCell
        
        let product = myProducts[indexPath.row]
        
        cell.update(with: product)
        cell.showsReorderControl = true
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedProduct = myProducts[indexPath.row] // Assuming productList is an array of Product
        performSegue(withIdentifier: "ShowProduct", sender: selectedProduct)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowProduct" {
            if let selectedProduct = sender as? Product,
               let productVC = segue.destination as? ProductViewController {
                productVC.selectedProduct = selectedProduct
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productDisplayTableView.dataSource = self
        productDisplayTableView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

