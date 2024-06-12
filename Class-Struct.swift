import UIKit

// Recipe - class
// can multiple dishes from it.
// these dishes can share certain features and can be modified individually

class Recipe {
  var ingredients: Int
  
  init(ingredients: Int) {
    self.ingredients = ingredients
  }
}

let cookieRecipe = Recipe(ingredients: 5)
print(cookieRecipe.ingredients)

let chickenRiceRecipe = cookieRecipe
chickenRiceRecipe.ingredients = 10
print(chickenRiceRecipe.ingredients)

print(cookieRecipe.ingredients)

// Pre-made meal - struct
// you create a meal, and you give it someone and they get an exact copy
// any changes they make to their meal dont affect your meal (ketchup)

struct MealKit {
  var ingredients: Int
}

var mondayMeal = MealKit(ingredients: 7)
var tuesdayMeal = mondayMeal

print(mondayMeal.ingredients)
print(tuesdayMeal.ingredients)

tuesdayMeal.ingredients = 12

print(mondayMeal.ingredients)
















// Classes can inherit properties and methods from other classes,
// while structs cannot!
class Vehicle {
  var speed: Int
  
  init(speed: Int) {
    self.speed = speed
  }
}

class Car: Vehicle {
  var model: String
  
  init(speed: Int, model: String) {
    self.model = model
    super.init(speed: speed)
  }
}

let bmwCar = Car(speed: 120, model: "BMW")

print(bmwCar.model)














// In the case of structs, you cannot change the properties if the instance is declared as a constant (let). The properties of a struct instance must be modified via a mutable (var) instance
class Person {
  var name: String
  var age: Int
  
  init(name: String, age: Int) {
    self.name = name
    self.age = age
  }
}

let david = Person(name: "David", age: 26)
david.age = 30

print(david.age)


struct Human {
  var name: String
  var age: Int
}

let tom = Human(name: "Tom", age: 40)
// ❌Cannot assign to property: 'tom' is a 'let' constant
// tom.age = 50
