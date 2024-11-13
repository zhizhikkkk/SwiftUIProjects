import SwiftUI


struct ButtonText : View{
    var title : String
    
    var body : some View{
        Text(title)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .font(.system(size: 20, weight: .bold,design: .default))
            .cornerRadius(8)
    }
}




#Preview{
    ButtonText(title: "Salom")
}
