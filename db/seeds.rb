# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

chest_triceps = Workout.create(title: "Chest/Tri Day", focus: "Chest and Triceps")
leg_day = Workout.create(title: "Leg Day", focus: "Hamstrings, Quads, Calves")
back_bi = Workout.create(title: "Back/Bi Day", focus: "Back and Biceps")
shoulders = Workout.create(title: "Boulder Shoulders", focus: "Anteriro, Lateral, and Posterior Heads")
full_body = Workout.create(title: "Full Body Recovery", focus: "Chest, Back, Legs")


Exercise.create([
    {name: "Bench Press", target: "Chest", sets: "5", reps: "4", workout: chest_triceps},
    {name: "Incline Dumbbell Press", target: "Upper Chest", sets: "4", reps: "8", workout: chest_triceps},
    {name: "Pec Flies", target: "Chest/Alterior Deltoid", sets: "4", reps: "12", workout: chest_triceps},
    {name: "Tricep Pushdown w/ Rope", target: "Triceps", sets: "4", reps: "8", workout: chest_triceps},
    {name: "Tricep Extensions", target: "Tricep Long Head", sets: "3", reps: "15", workout: chest_triceps},
    {name: "Squats", target: "Hamsting/Quads/Glutes", sets: "5", reps: "4", workout: leg_day},
    {name: "Leg Press", target: "Quads/Glutes", sets: "4", reps: "10", workout: leg_day},
    {name: "Seated Leg Curls", target: "Hamstrings/Glutes", sets: "3", reps: "15", workout: leg_day},
    {name: "Leg Extensions", target: "Quads", sets: "3", reps: "15", workout: leg_day},
    {name: "Calf Raises", target: "Calves", sets: "3", reps: "20", workout: leg_day},
    {name: "Deadlifts", target: "Upper/Lower Back, Traps", sets: "4", reps: "5", workout: back_bi},
    {name: "Lat Pulldowns", target: "Middle/Lower Back", sets: "4", reps: "12", workout: back_bi},
    {name: "Dumbbell Rows", target: "Upper/Middle Back, Shoulders, Biceps", sets: "4", reps: "10", workout: back_bi},
    {name: "Dumbbells Bicep Curls", target: "Biceps", sets: "4", reps: "8", workout: back_bi},
    {name: "Ez Bar Curl (Close Grip)", target: "Bicep Long Head", sets: "4", reps: "10", workout: back_bi},
    {name: "Shoulder Press", target: "All Shoulder Head", sets: "4", reps: "8", workout: shoulders},
    {name: "Dumbbell Shrugs", target: "Traps", sets: "4", reps: "15", workout: shoulders},
    {name: "Cable Lateral Raises", target: "Alterior/Lateral Deltoid", sets: "4", reps: "10", workout: shoulders},
    {name: "Cable Face Pulls", target: "Lateral/Poterior Deltoids", sets: "4", reps: "15", workout: shoulders},
    {name: "Bulgarian Split Squats", target: "Legs", sets: "3", reps: "10", workout: full_body},
    {name: "Leg Press", target: "Legs", sets: "3", reps: "15", workout: full_body},
    {name: "Dumbbell Press", target: "Chest", sets: "4", reps: "12", workout: full_body},
    {name: "Incline Dumbbell Flies", target: "Upper Chest", sets: "3", reps: "10", workout: full_body},
    {name: "Seated Cable Rows", target: "Back", sets: "4", reps: "12", workout: full_body},
    {name: "Back Extensions", target: "Spine/Glutes", sets: "3", reps: "15", workout: full_body}
])