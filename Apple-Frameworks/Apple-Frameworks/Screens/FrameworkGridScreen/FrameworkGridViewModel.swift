//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Zhanel Mamyt on 12.11.2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework : Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
    
    let columns : [GridItem] = [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())]
}
