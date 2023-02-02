//
//  DetailsVC.swift
//  AnbeTechTest
//
//  Created by Midas on 01/02/2023.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var headerTitle: UILabel!
    @IBOutlet weak var itemDesc: UILabel!
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var footerView: UIView!
    var itemDetails = CartItemModel()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        uisetup()
        loaData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        footerView.addRoundedCorner(corner: [.topLeft,.topRight], radius: 12)
        
    }
    func uisetup() {
       // footerView.addRoundedCorner(corner: [.topLeft,.topRight], radius: 12)
    }
    func loaData() {
        itemImage.image = UIImage(named: itemDetails.image ?? "")
        itemName.text = itemDetails.name
        itemDesc.text = itemDetails.desc
        headerTitle.text = itemDetails.name
    }
    
    @IBAction func backTap(_ sender: Any) {
        self.dismiss(animated: true)
    }
    

}
