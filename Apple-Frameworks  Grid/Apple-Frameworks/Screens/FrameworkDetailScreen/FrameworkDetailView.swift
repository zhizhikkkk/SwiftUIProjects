

import SwiftUI


struct FrameworkDetailView : View{
    var framework : Framework
    @State private var isShowingSafariView = false
    var body : some View{
        VStack{
            
            FrameworkItem(framework: framework, isGrid : true)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            } label :{
                Label( "Learn More", systemImage : "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
        }
        .fullScreenCover (isPresented: $isShowingSafariView, content:{
            SafariView(url: (URL(string: framework.urlString) ?? URL(string : "www.apple.com")!))
        })
    }
}


#Preview {
    FrameworkDetailView(framework : MockData.frameworks[0])
        
}
