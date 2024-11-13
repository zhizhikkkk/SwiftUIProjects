

import SwiftUI


struct FrameworkDetailView : View{
    var framework : Framework
    @Binding var isShowingDetailView : Bool
    @State private var isShowingSafariView = false
    var body : some View{
        VStack{
            XDismissButton(isShowingView: $isShowingDetailView)
            Spacer()
            FrameworkItem(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            } label :{
                ButtonText(title: "Learn More")
            }
        }
//        .sheet (isPresented: $isShowingSafariView, content:{
//            SafariView(url: (URL(string: framework.urlString) ?? URL(string : "www.apple.com")!))
//        })
        .fullScreenCover (isPresented: $isShowingSafariView, content:{
            SafariView(url: (URL(string: framework.urlString) ?? URL(string : "www.apple.com")!))
        })
    }
}


#Preview {
    FrameworkDetailView(framework : MockData.frameworks[0],isShowingDetailView: .constant(false))
        
}
