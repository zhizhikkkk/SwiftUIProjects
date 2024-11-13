//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Zhanel Mamyt on 12.11.2024.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    @State private var isGrid = true

    var body: some View {
        NavigationStack {
            Group{
                if isGrid {
                    ScrollView {
                        LazyVGrid(columns: viewModel.columns) {
                            ForEach(MockData.frameworks) { framework in
                                NavigationLink(value: framework) {
                                    FrameworkItem(framework: framework, isGrid : true)
                                }
                            }
                        }
                    }
                } else {
                    List {
                        ForEach(MockData.frameworks) { framework in
                            NavigationLink(value: framework) {
                                FrameworkItem(framework: framework,isGrid : false )
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Apple Frameworks")
                        .font(.title)
                        .fontWeight(.bold)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isGrid.toggle() 
                    }) {
                        Image(systemName: isGrid ? "list.bullet" : "square.grid.2x2")
                            .foregroundColor(Color(.label))
                    }
                }
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}


