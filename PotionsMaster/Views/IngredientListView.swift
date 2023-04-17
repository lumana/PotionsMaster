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

import SwiftUI
import RealmSwift


struct IngredientListView: View {
  @State private var ingredientFormIsPresented = false

  /*
   @ObservedResults is a property wrapper you can use to fetch and observe objects from a realm. This property fetches objects and returns a Results type, which is a type from Realm that represents a collection of objects retrieved from queries.
  */
  @ObservedResults(
    Ingredient.self,
    where: { $0.bought == false }
  ) var ingredients

  @ObservedResults(
    Ingredient.self,
    where: { $0.bought == true }
  ) var boughtIngredients


  @ViewBuilder var newIngredientButton: some View {
    Button(action: openNewIngredient) {
      Label("New Ingredient", systemImage: "plus.circle.fill")
    }
    .foregroundColor(.green)
    .sheet(isPresented: $ingredientFormIsPresented) {
      IngredientFormView(ingredient: Ingredient())
    }
  }

  var body: some View {
    List {
      Section("Ingredients") {
        if ingredients.isEmpty {
          Text("Add some ingredients to the list🥬")
            .font(.subheadline)
            .foregroundColor(.gray)
        }
        ForEach(ingredients) { ingredient in
          IngredientRow(ingredient: ingredient)
        }
        newIngredientButton
      }
      Section {
        if boughtIngredients.isEmpty {
          Text("Buy some ingredients to have them listed here.")
            .font(.subheadline)
            .foregroundColor(.gray)
        }
        ForEach(boughtIngredients) { ingredient in
          IngredientRow(ingredient: ingredient)
        }
        .onDelete(perform: $boughtIngredients.remove)
      } header: {
        Text("Bought")
      } footer: {
        if !boughtIngredients.isEmpty {
          Text("Swipe from right to left to delete an ingredient.")
        }
      }
    }
    .navigationTitle("Potions Master🧪")
  }
}

// MARK: - Actions
extension IngredientListView {
  func openNewIngredient() {
    ingredientFormIsPresented.toggle()
  }
}

struct IngredientListView_Previews: PreviewProvider {
  static var previews: some View {
    IngredientListView()
  }
}
