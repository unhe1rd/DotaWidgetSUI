//
//  ContentView.swift
//  DotaWidgetApp
//
//  Created by Mike Ulanov on 12.02.2024.
//

import SwiftUI
import WidgetKit

struct CircleView: View{
    var radius: CGFloat
    var body: some View{
        Circle()
            .fill(Color.green)
            .frame(height: self.radius * 2)
            .overlay(
                Text("Habra")
                    .font(.largeTitle)
                    .foregroundColor(.gray)
                )

    }
}
struct CustomCircleView: View{
    var radius: CGFloat
    var body: some View{
        Circle()
            .fill(Color.gray)
            .frame(width: self.radius * 2, height: self.radius * 2)
            .overlay(
                Text("Habr")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                )
    }
}
struct CustomCircleTestView: View {
    @State var radius: CGFloat = 50
    var body: some View {
        VStack{
            CircleView(radius: radius)
               .frame(height: 200)
            Slider(value: self.$radius, in: 42...100)
            Button(action: {
                withAnimation(.linear(duration: 1)){
                    self.radius = 50
                }
            }){
                Text("set default radius")
            }
        }
    }
}
#Preview {
    CustomCircleTestView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
