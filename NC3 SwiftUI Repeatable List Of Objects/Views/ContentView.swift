//
//  ContentView.swift
//  NC3 SwiftUI Repeatable List Of Objects
//
//  Created by Jeremy Skrdlant on 12/9/23.
//

import SwiftUI

struct ContentView: View {
    var students = mockData
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Students")
                List(students){
                    student in
                    
                    NavigationLink {
                        StudentDetailView(student: student)
                        
                    } label: {
                        StudentRowView(student: student)
                        
                    }
                }.listStyle(.plain)
            }
        }
    }
}

#Preview {
    ContentView()
}
