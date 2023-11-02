//
//  WorkoutView.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 11/2/23.
//

import SwiftUI

struct WorkoutView: View {
    @StateObject var workout: Workout = .example
    @State private var showingSheet = false
    var body: some View {
        NavigationStack {
            List {
                ForEach(workout.exercises) { exercise in
                    ExerciseRowItemView(exercise: exercise)
                }
            }
            .navigationTitle("Liftey")
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button("Add workout") {
                        showingSheet.toggle()
                    }
                }
            }
            .sheet(isPresented: $showingSheet) {
                AddWorkoutView(workout: workout)
            }
        }
    }
}

#Preview {
    WorkoutView()
}
