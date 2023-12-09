//
//  StudentDetailView.swift
//  NC3 SwiftUI Repeatable List Of Objects
//
//  Created by admin on 12/9/23.
//

import SwiftUI

struct StudentDetailView: View {
    var student:Student
    
    var body: some View {
        VStack (spacing: 0) {
            ZStack {
                Image("chalkboard")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 150)
                    .clipped()
                
                Text(student.name)
                    .bold()
                    .font(.system(size: 40))
                    .foregroundStyle(Color.white)
                
                    .shadow(color: .black, radius: 3)
            }
            
            VStack(alignment: .leading) {
                Text("📖 \(student.preferredLearningStyle)")
                    .bold()
                    .kerning(3)
                Divider()
                    .padding(.top, 30)
                Text("Interests")
                    .font(.headline)
                ForEach(student.interests, id:\.self){
                    interest in
                    Text(interest)
                        .offset(x: 15)
                }
                Divider()
                    .padding(.top, 30)
                Text("Missed Assignments")
                    .font(.headline)
                ForEach(student.missedAssignments, id:\.self){
                    assignment in
                    Text(assignment)
                        .offset(x: 15)
                }
                Spacer()
            }.padding()
        }
    }
}

#Preview {
    StudentDetailView(student: mockData[0])
}
