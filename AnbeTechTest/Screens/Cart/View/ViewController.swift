//
//  ViewController.swift
//  AnbeTechTest
//
//  Created by Midas on 31/01/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var totalLbl: UILabel!
    @IBOutlet weak var footerView: UIView!
    @IBOutlet weak var tableVIew: UITableView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileImageBackView: UIView!
    @IBOutlet weak var headerBackView: UIView!
    @IBOutlet var headerView: UIView!
     
    lazy var viewModel = {
    CartViewModel()
    }()
    var index: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        uisetup()
        initViewModel()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        footerView.addRoundedCorner(corner: [.topLeft,.bottomRight], radius: 12)
    }
    func uisetup() {
        headerBackView.addShadow(view: headerBackView, width: 8, height: 8, shadowRadius: 3, shadowOpacity: 0.3)
        headerBackView.addRoundedCorner(radius: 12)
        headerBackView.layer.masksToBounds = false
        profileImageBackView.addShadow(view: profileImageBackView, width: 0, height: 0, shadowRadius: 3, shadowOpacity: 0.5)
        profileImageBackView.addRoundedCorner(radius: 35)
        profileImageBackView.layer.masksToBounds = false
        profileImage.layer.cornerRadius = 33
       
        
        //tableview
        tableVIew.register(CartItemTVC.nib, forCellReuseIdentifier: CartItemTVC.identifier)
        tableVIew.dataSource = self
        tableVIew.delegate = self
        tableVIew.tableHeaderView = headerView
        tableVIew.backgroundColor = .clear
    }
    func initViewModel() {
        viewModel.getCartItems()
        viewModel.reloadTableView = {[weak self] in
            DispatchQueue.main.async {
                self?.tableVIew.reloadData()
            }
        }
        totalCalculation()
    }
    func showAlert() {
        let alert = UIAlertController(title: "Remove this item?", message: "This item will be removed from your cart.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { action in
            self.viewModel.removeItem(index: self.index ?? 0)
            self.totalCalculation()
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { action in
                self.dismiss(animated: true)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    func totalCalculation() {
        var total = 0
        for item in viewModel.cartData {
            if let itemprice = item.price {
                if (item.quantity ?? 1) > 1 {
                    let price = (itemprice * (item.quantity ?? 1))
                    total = total + price
                } else {
                    let price = (itemprice)
                    total = total + price
                }
               
            }
        }
        totalLbl.text = "Rs. " + (total as NSNumber).stringValue
    }
    
}
//MARK: - TABLE VIEW DATASOURCE
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if viewModel.cartData.count == 0 {
            tableView.setEmptyMessage("No items found!.")
        } else {
            tableView.restore()
        }
        return viewModel.cartData.count
      
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CartItemTVC.identifier, for: indexPath) as? CartItemTVC else {
            fatalError("CartItemTVC not found")
        }
        let item = viewModel.getCellViewModel(indexpath: indexPath)
        cell.cellviewModel = item
        cell.selectionStyle = .none
        cell.delegate = self
        cell.index = indexPath
        return cell
                
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
}
//MARK: - TABLE VIEW DELEGATE
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailsVC") as! DetailsVC
        vc.itemDetails = viewModel.cartData[indexPath.row]
        self.navigationController?.present(vc, animated: true)
    }
}
// MARK: - CART ITEM DELEGATE
extension ViewController: CartItemDelegate {
    func quantityChange(index: Int, qunanity: Int, subtractingItem: Bool) {
        self.index = index
        viewModel.changeQuantity(index: index, quantity: qunanity, subtractingItem: subtractingItem)
        self.viewModel.reloadTableView = { [weak self] in
            DispatchQueue.main.async {
                self?.tableVIew.reloadData()
            }
        }
        totalCalculation()
    }
    
   
    func removeItem(index: Int) {
        self.index = index
        showAlert()
    }
}
