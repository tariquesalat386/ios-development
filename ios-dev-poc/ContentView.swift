//
//  ContentView.swift
//  ios-dev-poc
//
//  Created by Tarique Salat on 01/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var number1: String = ""
    @State private var number2: String = ""
    @State private var result: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter number 1", text: $number1)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
            
            TextField("Enter number 2", text: $number2)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
            
            Button(action: {
                if let num1 = Int(number1), let num2 = Int(number2) {
                    let sum = num1 + num2
                    result = "Sum is \(sum)"
                } else {
                    result = "Invalid input"
                }
            }) {
                Text("Add")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }
            
            Text(result)
                .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
