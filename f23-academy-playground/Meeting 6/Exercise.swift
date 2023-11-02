//
//  Exercise.swift
//  f23-academy-playground
//
//  Created by AlecNipp on 11/2/23.
//

import Foundation

struct Exercise: Identifiable {
    var id: UUID = UUID()
    var reps: Int
    var sets: Int
    var weight: Int
    var name: String
    static var example: Exercise {
        return Exercise(reps: 10, sets: 3, weight: 135, name: "Bench Press")
    }
}

class Workout: ObservableObject {
    @Published var exercises: [Exercise]
    
    init(exercises: [Exercise]) {
        self.exercises = exercises
    }
    static var example: Workout {
        return Workout(exercises: [Exercise.example])
    }
}
