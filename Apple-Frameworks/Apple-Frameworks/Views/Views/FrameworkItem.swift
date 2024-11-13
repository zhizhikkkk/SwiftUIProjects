//
//  FrameworkItem.swift
//  Apple-Frameworks
//
//  Created by Zhanel Mamyt on 13.11.2024.
//

import SwiftUI

struct FrameworkItem : View{
    let framework : Framework
    var body: some View{
        VStack{
            Image(framework.imageName )
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
#Preview {
    FrameworkItem(framework: MockData.sampleFramework)
}
