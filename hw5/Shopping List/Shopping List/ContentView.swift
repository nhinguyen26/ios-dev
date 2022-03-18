//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

class Items: Identifiable {
    
    let imgName: String
    
    let itName: String
    
    let quant: Int
    
    init(imageName: String, itemName: String, quantity: Int) {
        
        self.imgName = imageName
        self.itName = itemName
        self.quant = quantity
    }
}


struct ContentView: View {
    
    var listFruits = [
        Items(imageName: "banana", itemName: "Bananas", quantity: 3),
        Items(imageName: "apple", itemName: "Apples", quantity: 4),
        Items(imageName: "eggs", itemName: "Eggs", quantity: 12)]
        
    var listDairy = [
        Items(imageName: "banana", itemName: "Bananas", quantity: 3),
        Items(imageName: "apple", itemName: "Apples", quantity: 4),
        Items(imageName: "eggs", itemName: "Eggs", quantity: 3)]
    
    var listVeggies = [
        Items(imageName: "banana", itemName: "Bananas", quantity: 3),
        Items(imageName: "apple", itemName: "Apples", quantity: 4),
        Items(imageName: "eggs", itemName: "Eggs", quantity: 3)]
    
    
    var body: some View {
        
        NavigationView {
            List {
                Section(header: Text("Fruits")) {
                    ForEach(listFruits) { i in
                        CustomCell(imageName: i.imgName, itemName: i.itName, quantity: i.quant)}
                    }
                Section(header: Text("Dairy")) {
                    ForEach(listDairy) { i in
                        CustomCell(imageName: i.imgName, itemName: i.itName, quantity: i.quant)}
                    }
                Section(header: Text("Vegetables")) {
                    ForEach(listVeggies) { i in
                        CustomCell(imageName: i.imgName, itemName: i.itName, quantity: i.quant)}
                    }
                
            }.navigationTitle("Shopping List")
            
        }

        }
        
    }
