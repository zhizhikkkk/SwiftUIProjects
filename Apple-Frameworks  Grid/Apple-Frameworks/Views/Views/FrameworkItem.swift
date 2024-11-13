import SwiftUI

struct FrameworkItem: View {
    let framework: Framework
     var isGrid: Bool
    
    var body: some View {
        Group {
            if isGrid {
                VStack {
                    content
                }
                
            } else {
                HStack {
                    content
                }
            }
        }
        .padding()
    }
    
   
    private var content: some View {
        Group {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}

#Preview {
    FrameworkItem(framework: MockData.sampleFramework, isGrid: true)
}
