//
//  StudentRowView.swift
//  NC3 SwiftUI Repeatable List Of Objects
//
//  Created by admin on 12/9/23.
//

import SwiftUI

struct StudentRowView: View {
    // This variable helps make this view be unique. The placeholders are in the same location but the data changes based on each student.
    var student:Student
    
    // Every struct that uses the View protocol has to implement the body variable. This is where all your SwiftUI lives.
    var body: some View {
        // We want our data going left to right so we are putting it in an HStack
        HStack {
            //We need to use string interpolation here because Text requires a string.  Tha means you can not pass it just a number. \() can surround variables so that we can put them in strings.
            Text("\(student.missedAssignments.count)")
                // This uses a ternary operator.  If the student has no missing assignments, then the color is gray. But if they do have a missing assignment, then the number is red.
                .foregroundStyle(student.missedAssignments.count == 0 ? Color.gray : Color.red)
                // This is the simple way to make the font bold.  If you want more control, you can use .fontWeight instead.
                .bold()
                // This is the easiest way to resize your font to the exact size you want. Note the dot before system.  If you miss dots, you will get bugs that are somewhat difficult to track down.
                .font(.system(size: 25))
            .shadow(radius: 2)
            // This will prevent the right side from being jagged.  Once a student got 10 or more assignments missing, the next text would be pushed a little to the right.  By setting the width, it creates a clean left line for the next text field.
            .frame(width: 50)
            // This one does not have a width, If we added a width, you might end up with the string getting cut off.
            Text("|  \(student.name)")
                .bold()
                .font(.system(size: 25))
            // This pushes everything to the left filling up the space that is left on the right.
            Spacer()
        }
        //This adds 5 points of padding to the top and bottom of this entire view.
        .padding(.vertical, 5)
    }
}

#Preview {
    //Note we are passing in the first student from out array here.  We can change the 0 to any number between 0 and 9 to see what the different data looks like in this view. 
    StudentRowView(student: mockData[0])
}
