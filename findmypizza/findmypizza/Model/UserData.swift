//
//  UserData.swift
//  findmypizza
//
//  Created by Aurel Mustafa on 7/14/20.
//  Copyright © 2020 LL. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class UserData : ObservableObject {
    
    @Published var showFavoritesOnly = false
    @Published var isFavorite = false
    @Published var pizzaplaces = pizzaplaceData
    
}
