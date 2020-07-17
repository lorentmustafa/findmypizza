//
//  PizzaPlaces.swift
//  findmypizza
//
//  Created by Lorent Mustafa on 7/10/20.
//  Copyright © 2020 LL. All rights reserved.
//

import SwiftUI

struct PizzaPlaces: View {
    
    @EnvironmentObject var userData: UserData
  
    
    var body: some View {
        
        
        List {
            
            //First Row
            Toggle(isOn: self.$userData.showFavoritesOnly) {
                Text("Show Favorites Only")
            }
            
            //Pizza Places
            ForEach(userData.pizzaplaces) {
                pizzaplace in
                
                if !self.userData.showFavoritesOnly || (self.userData.showFavoritesOnly && pizzaplace.isFavorite){
                    
                    NavigationLink(destination: PizzaMainInfo(pizzaplace: pizzaplace).environmentObject(self.userData)
                    ){
                        PizzaRow(pizzaPlace: pizzaplace).padding(.all, 10)
                        
                    }
                }
            }
            
        }.navigationBarTitle("Pizza Places", displayMode: .inline)
        
        
    }
}

struct PizzaPlaces_Previews: PreviewProvider {
    static var previews: some View {
    PizzaPlaces().environmentObject(UserData())
        
    }
}
