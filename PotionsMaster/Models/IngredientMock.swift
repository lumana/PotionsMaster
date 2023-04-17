/// Copyright (c) 2022 Razeware LLC
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// This project and source code may use libraries or frameworks that are
/// released under various Open-Source licenses. Use of those libraries and
/// frameworks are governed by their own individual licenses.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

enum IngredientMock {
  static var unicornTailHair: Ingredient {
    let ingredient = Ingredient()
    ingredient.title = "Unicorn Tail Hair"
    ingredient.notes = "Used in Beautification Potion"
    ingredient.bought = false
    ingredient.quantity = 1
    return ingredient
  }

  static var dittany: Ingredient {
    let ingredient = Ingredient()
    ingredient.title = "Dittany"
    ingredient.notes = "Used in healing potions like Wiggenweld"
    ingredient.bought = false
    ingredient.quantity = 1
    return ingredient
  }

  static var mandrake: Ingredient {
    let ingredient = Ingredient()
    ingredient.title = "Mandrake"
    ingredient.notes = "Used in a healing potion called the Mandrake Restorative Draught"
    ingredient.bought = false
    ingredient.quantity = 1
    return ingredient
  }

  static var aconite: Ingredient {
    let ingredient = Ingredient()
    ingredient.title = "Aconite"
    ingredient.notes = "Used in the Wolfsbane Potion"
    ingredient.bought = false
    ingredient.quantity = 1
    return ingredient
  }

  static var unicornBlood: Ingredient {
    let ingredient = Ingredient()
    ingredient.title = "Unicorn blood"
    ingredient.notes = "Used in Rudimentary body potions"
    ingredient.bought = false
    ingredient.quantity = 1
    return ingredient
  }

  static let ingredientsMock = [
    unicornTailHair,
    dittany,
    mandrake,
    aconite,
    unicornBlood
  ]

  static var roseThorn: Ingredient {
    let ingredient = Ingredient()
    ingredient.title = "Rose Thorn"
    ingredient.notes = "Used in Love potions"
    ingredient.bought = true
    ingredient.quantity = 2
    return ingredient
  }

  static var rosePetals: Ingredient {
    let ingredient = Ingredient()
    ingredient.title = "Rose Petals"
    ingredient.notes = "Used in Love potions"
    ingredient.bought = true
    ingredient.quantity = 2
    return ingredient
  }

  static let boughtIngredientsMock = [
    roseThorn,
    rosePetals
  ]
}
