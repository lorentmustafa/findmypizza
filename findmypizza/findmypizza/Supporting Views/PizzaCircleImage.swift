//
//  PizzaCircleImage.swift
//  findmypizza
//
//  Created by Lorent Mustafa on 7/10/20.
//  Copyright © 2020 LL. All rights reserved.
//

import SwiftUI

struct PizzaCircleImage: View {
    
    var image:Image
    
    var body: some View {
        
        image
            .resizable()
            .frame(width:300, height:300)
            .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                .shadow(radius: 15)
            
        
    }
}

struct PizzaCircleImage_Previews: PreviewProvider {
    static var previews: some View {
        PizzaCircleImage(image: Image( pizzaplaceData[2].imageName))
    }
}
