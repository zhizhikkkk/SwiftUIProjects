//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Zhanel Mamyt on 13.11.2024.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingView : Bool
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingView = false
            } label :{
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width:44, height:44)
            }
            .padding()
        }
    }
}

#Preview {
    XDismissButton(isShowingView: .constant(false))
}
