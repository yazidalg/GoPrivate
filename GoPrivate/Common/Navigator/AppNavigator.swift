//
//  AppNavigator.swift
//  GoPrivate
//
//  Created by Yazid Al Ghozali on 11/02/24.
//

import SwiftUI

// AppNavigator inherited from ObservableObject
// Class AppNavigator can use all of the method/function/values from ObeservableObject
final class AppNavigator : ObservableObject {
    
    // Navigation address when the user tap some view to another view
    // will save the address in here
    @Published var routes: [Route] = []
    
    // For navigate between view and add the address view to [Route]
    func navigate(to view: Route) {
        routes.append(view)
    }
    
    func back() {
            _ = routes.popLast()
    }
        
    func backHome() {
        routes = []
    }
}

enum Route {
    case boardingView
    case loginView
    case registerView
}

//extension Route: View {
//    var body: some View {
//        switch self {
//        case .boardingView:
//            BoardingView()
//        case .loginView:
//            LoginView()
//        case .registerView:
//            SignUpView()
//        }
//    }
//}

extension Route: Hashable {
    static func == (lhs: Route, rhs: Route) -> Bool {
        return true
    }
    
    func hash(into hasher: inout Hasher) {
        
    }
}
