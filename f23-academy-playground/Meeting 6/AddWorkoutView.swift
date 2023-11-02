//
//  AddWorkoutView.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 11/2/23.
//

import SwiftUI

struct AddWorkoutView: View {
    @ObservedObject var workout: Workout
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Button("add!") {
            workout.exercises.append(Exercise.example)
        }
    }
}

#Preview {
    AddWorkoutView(workout: .example)
}
