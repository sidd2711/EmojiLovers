//
//  ContentView.swift
//  EmojiLover
//
//  Created by Siddharth Charkhawala on 04/02/24.
//

import SwiftUI
import SwiftData

enum Emoji : String, CaseIterable{
    case 😇,🥳,🥶,🫡
}

struct ContentView: View {
    @State var selection : Emoji = .🥶
    var body: some View{
        NavigationView{
            VStack{
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                Picker("Select Emoji",selection : $selection){
                    ForEach(Emoji.allCases, id: \.self){
                        emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Emoji Lovers!")
            .padding()
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
