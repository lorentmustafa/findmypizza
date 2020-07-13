//
//  PizzaPlaces.swift
//  findmypizza
//
//  Created by Lorent Mustafa on 7/10/20.
//  Copyright © 2020 LL. All rights reserved.
//

import SwiftUI

struct PizzaPlaces: View {
    var body: some View {
    

            List(pizzaplaceData) { pizzaplace in

                NavigationLink(destination: PizzaMainInfo(pizzaplace: pizzaplace)){
                    PizzaRow(pizzaPlace: pizzaplace).padding(.all, 10)
                        
                }
    }.navigationBarTitle("Pizza Places", displayMode: .inline)
    
}
}

struct PizzaPlaces_Previews: PreviewProvider {
    static var previews: some View {
        PizzaPlaces()
    }
}
