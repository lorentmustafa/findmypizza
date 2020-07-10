//
//  PizzaCircleImage.swift
//  findmypizza
//
//  Created by Lorent Mustafa on 7/10/20.
//  Copyright © 2020 LL. All rights reserved.
//

import SwiftUI

struct PizzaCircleImage: View {
    var body: some View {
        Image("properpizza").clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                .shadow(radius: 15)
        
    }
}

struct PizzaCircleImage_Previews: PreviewProvider {
    static var previews: some View {
        PizzaCircleImage()
    }
}
