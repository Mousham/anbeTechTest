//
//  CartViewModel.swift
//  AnbeTechTest
//
//  Created by Midas on 31/01/2023.
//

import Foundation

class CartViewModel: NSObject {
    //    var getCartItems = [CartViewModel]()
    var reloadTableView: (() -> Void)?
    var cartData = [CartItemModel]()
    
    func getCartItems() {
        cartData = CartItemModel().getAllCartItems()
    }
    func getCellViewModel(indexpath: IndexPath) -> CartItemModel {
        print(cartData[indexpath.row])
        return cartData[indexpath.row]
    }
    func changeQuantity(index: Int,quantity: Int,subtractingItem: Bool) {
       
        
        cartData[index].quantity = quantity
        reloadTableView?()
        
    }
    func removeItem(index: Int) {
        cartData.remove(at: index)
        reloadTableView?()
    }
}
