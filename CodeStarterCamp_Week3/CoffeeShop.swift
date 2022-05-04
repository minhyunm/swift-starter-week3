//
//  Week3Step1CoffeeShop.swift
//  CodeStarterCamp_Week3
//
//  Created by mingmac on 2022/05/01.
//

import Foundation

class CoffeeShop {
    var sales: Int = 0
    var barista: Person
    var cafeName: String
    var cafeMenu = Coffee.allCases
    var pickUpTable: Coffee?
    
    init(barista: Person, cafeName: String) {
        self.barista = barista
        self.cafeName = cafeName
    }
    
    func order(_ order: Coffee, for customer: Person) {
            print("[커피숍] \(customer.name)님이 \(order)를 주문하였습니다.")
            if customer.money < order.price {
                let changes = order.price - customer.money
                print("[안내] 잔액이 \(changes)원 부족합니다.")
            } else {
                sales += order.price
                print("[안내] 현재 \(cafeName)의 매출액은 \(sales)원 입니다.")
                customer.money -= order.price
                print("[안내] \(customer.name)님의 잔액은 \(customer.money)원 입니다.")
                brewCoffee(order)
            }
        }
    
    func brewCoffee(_ drink: Coffee) {
        print("\(drink)를 제조합니다.")
    }
}
