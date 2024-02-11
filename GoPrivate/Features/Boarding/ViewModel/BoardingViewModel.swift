//
//  BoardingViewModel.swift
//  GoPrivate
//
//  Created by Yazid Al Ghozali on 11/02/24.
//

import Foundation

class BoardingViewModel: ObservableObject {
    @Published var role: String = ""
    @Published var isNavigate: Bool = false
}
