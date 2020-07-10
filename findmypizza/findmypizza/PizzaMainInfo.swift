//
//  PizzaMainInfo.swift
//  findmypizza
//
//  Created by Lorent Mustafa on 7/10/20.
//  Copyright © 2020 LL. All rights reserved.
//

import SwiftUI

struct PizzaMainInfo: View {
    var body: some View {
        
        VStack {
            //Map	
            MapView().frame(height:300).edgesIgnoringSafeArea(.top)
           
            //CircleImage
            PizzaCircleImage()
                .offset(y: -100)
                .padding(.bottom, -100)
                
            //TextViews
            VStack(alignment: .leading) {
                
                Text("Proper Pizza")
                    .font(.title)
                
                HStack {
                    Text("Rruga E Kombit")
                        .font(.subheadline)
                    Spacer()
                    Text("Ferizaj")
                    .font(.subheadline)
                }
            }.padding(.all, 10)
            Spacer()
        }
    }
}


struct PizzaMainInfo_Previews: PreviewProvider {
    static var previews: some View {
        PizzaMainInfo()
    }
}
