//
//  ContentView.swift
//  NC3 SwiftUI Repeatable List Of Objects
//
//  Created by Jeremy Skrdlant on 12/9/23.
//

import SwiftUI

struct ContentView: View {
    //We are grabbing the mock data.  If we were fetching data, we would need this to be an @State variable so that we could change it once the data loads.
    var students = mockData
    
    var body: some View {
        //Navigation View is required for our links to work.  If we are missing this view,then our links will be slighty grayed out and will not work.
        NavigationView{
            VStack {
                Text("Students")
                //List is similar to ForEach except that our links don't turn blue and we get the table row view that is standard in iOS apps for free.
                List(students){
                    student in
                    //student is the variable name we gave for the parameter that is being passed in this closure.  Students is an entire array of students and student is the individual student we are looking at during this iteration of the loop.
                    
                    
                    //A navigation link doesn't have to be in a list.  It can be out on it's own if we wanted it to.  The benefit of having the link inside the list is the ability to link to the same view but with different start values for each item in the list.
                    NavigationLink {
                        //This is where the app will go if the user taps this link. Note that we use the student variable so each time we tap, we go to the same view but we populate it with a different student's data.
                        StudentDetailView(student: student)
                        
                    } label: {
                        // This is our simple row view.  Note that we use the student variable in this so that each row shows a unique student.
                        StudentRowView(student: student)
                        
                    }
                    //Our list sylte of plain lets us go edge to edge and not have the grouping like the default list style.  You can go inside the ( ) and just press . to see all the styles you can use. 
                }.listStyle(.plain)
            }
        }
    }
}

#Preview {
    ContentView()
}
