//
//  ContentView.swift
//  DotaWidgetApp
//
//  Created by Mike Ulanov on 12.02.2024.
//

import SwiftUI
import CoreData
import WidgetKit

struct ContentView: View {
    let text1 = "Hello world"
    let text2 = "ты чмо"
    
    var body: some View {
        VStack{
            Text(text1)
                .font(.largeTitle)
            Text(text2)
                .font(.callout)
        }
    }
}



#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
