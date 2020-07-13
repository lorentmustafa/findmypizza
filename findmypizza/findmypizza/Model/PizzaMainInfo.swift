//
//  PizzaMainInfo.swift
//  findmypizza
//
//  Created by Lorent Mustafa on 7/10/20.
//  Copyright © 2020 LL. All rights reserved.
//

import SwiftUI

struct PizzaMainInfo: View {
    
    var pizzaplace : PizzaPlace
    
    var body: some View {
        
        
        VStack {
            //Map	
            MapView(pizzaPlace: pizzaplace, coordinate: pizzaplace.locationCoordinate).frame(height:300).edgesIgnoringSafeArea(.top)
           
            //CircleImage
            PizzaCircleImage(image: Image(pizzaplace.imageName))
                .offset(y: -50)
                .frame(width:100, height:100)
                .padding(.bottom, 50)
                
            //TextViews
            VStack(alignment: .leading) {
                
                Text(pizzaplace.name)
                    .font(.title)
                
                HStack {
                    Text(pizzaplace.address)
                        .font(.subheadline)
                    Spacer()
                    Text(pizzaplace.city)
                    .font(.subheadline)
                }
            }.padding(.all, 10)
            Spacer()
        }.navigationBarTitle(Text(pizzaplace.name), displayMode: .inline)
    }
}


struct PizzaMainInfo_Previews: PreviewProvider {
    static var previews: some View {
        PizzaMainInfo(pizzaplace: pizzaplaceData[1])
    }
}
