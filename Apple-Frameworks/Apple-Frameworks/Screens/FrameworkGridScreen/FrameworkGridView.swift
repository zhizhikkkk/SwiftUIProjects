//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Zhanel Mamyt on 12.11.2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns : viewModel.columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameworkItem(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework : viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
        
        
    }
}

#Preview {
    FrameworkGridView()}
