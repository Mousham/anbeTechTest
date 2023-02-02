//
//  CartItemTVC.swift
//  AnbeTechTest
//
//  Created by Midas on 31/01/2023.
//

import UIKit
protocol CartItemDelegate: class {
    func quantityChange(index: Int,qunanity: Int,subtractingItem: Bool)
    func removeItem(index: Int)
}
class CartItemTVC: UITableViewCell {
    @IBOutlet weak var quantityLbl: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var tax: UILabel!
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var imageBackView: UIView!
    @IBOutlet weak var backVie: UIView!
    weak var delegate: CartItemDelegate?
    var index: IndexPath?
    class var identifier: String {
        return String(describing: self)
    }
    class var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    var cellviewModel: CartItemModel? {
        didSet {
            itemImage.image = UIImage(named: cellviewModel?.image ?? "")
            quantityLbl.text = (cellviewModel?.quantity as? NSNumber)?.stringValue
            tax.text = "Tax: " + ((cellviewModel?.tax as? NSNumber)?.stringValue ?? "") + "%"
            itemName.text = cellviewModel?.name
            price.attributedText = getCurrentPrice(price: (cellviewModel?.price as? NSNumber)?.stringValue ?? "", quantity: cellviewModel?.quantity ?? 0)
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        uisetup()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func uisetup() {
        imageBackView.addShadow(view: imageBackView, width: 0, height: 8, shadowRadius: 3, shadowOpacity: 0.5)
        itemImage.backgroundColor = .white
        
    }
    func getCurrentPrice(price: String,quantity: Int) -> NSMutableAttributedString{
        let newPrice = (Int(price) ?? 0) * quantity
      let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: "Rs. ")
        attributeString.addAttributes([NSAttributedString.Key.font: UIFont(name: FontsType.GilroySemibold.rawValue, size: 17)!], range: NSRange(location: 0, length: 4))
        let laststring: NSMutableAttributedString = NSMutableAttributedString(string: String(newPrice))
        laststring.addAttributes([NSAttributedString.Key.font: UIFont(name: FontsType.GilroySemibold.rawValue, size: 17)!], range: NSRange(location: 0, length: price.count))
        let texstring:  NSMutableAttributedString = NSMutableAttributedString(string: " (Incl. Tax)")
        texstring.addAttributes([NSAttributedString.Key.font: UIFont(name: FontsType.GilroySemibold.rawValue, size: 09)!,NSAttributedString.Key.foregroundColor: UIColor.lightGray], range: NSRange(location: 0, length: " (Incl. Tax)".count))
       
        let finalstring = NSMutableAttributedString()
        finalstring.append(attributeString)
        finalstring.append(laststring)
        finalstring.append(texstring)
        return finalstring
    }
    @IBAction func minubtnTap(_ sender: Any) {
        if (cellviewModel?.quantity ?? 0) > 1 {
            delegate?.quantityChange(index: index?.row ?? 0, qunanity: ((cellviewModel?.quantity ?? 0) - 1),subtractingItem: true)
        } else {
            delegate?.removeItem(index: index?.row ?? 0)
        }
      
    }
    @IBAction func addBtnTap(_ sender: Any) {
        delegate?.quantityChange(index: index?.row ?? 0, qunanity: ((cellviewModel?.quantity ?? 0) + 1),subtractingItem: false)
    }
    @IBAction func crossTap(_ sender: Any) {
        delegate?.removeItem(index: index?.row ?? 0)
    }
}
