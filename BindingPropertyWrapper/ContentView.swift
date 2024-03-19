//
//  ContentView.swift
//  BindingPropertyWrapper
//
//  Created by Sadia on 19/3/24.
//

import SwiftUI

//parent view
struct ContentView: View {
    @State var backgroundColor: Color = .gray
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea(.all)
            ButtonView(backgroundColor: $backgroundColor) // taking child views value for parent view
        }
    }
}


//child view
struct ButtonView: View{
    @Binding var backgroundColor: Color // Binding with parentview from here
    var body: some View{
        Button {
            backgroundColor = .brown
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue)
                .cornerRadius(15)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
