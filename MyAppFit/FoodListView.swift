//
//  FoodView.swift
//  MyAppFit
//
//  Created by Apprenant 162 on 19/12/2024.
//
import SwiftUI

struct FoodItemView: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    @State var quantity: Int
}

struct FoodListView: View {
    @State private var foodItems = [
        FoodItemView(name: "Chou vert", imageName: "lettuce", quantity: 0),
        FoodItemView(name: "Chou violet", imageName: "purple_cabbage", quantity: 0),
        FoodItemView(name: "Carotte", imageName: "carrot", quantity: 0),
        FoodItemView(name: "Tomate", imageName: "tomato", quantity: 0),
        FoodItemView(name: "Pâtes", imageName: "pasta", quantity: 0),
        FoodItemView(name: "Beignet", imageName: "donut", quantity: 0),
        FoodItemView(name: "Langouste", imageName: "lobster", quantity: 0),
        FoodItemView(name: "Frites", imageName: "fries", quantity: 0),
        FoodItemView(name: "Poireau", imageName: "leek", quantity: 0)
    ]

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Aliments")
                        .font(.title2)
                        .bold()
                    Spacer()
                    Button(action: {
                        // Recherche par nom
                    }) {
                        Image(systemName: "slider.horizontal.3")
                            .foregroundColor(.orange)
                    }
                }
                .padding()

                List {
                    ForEach($foodItems) { $item in
                        HStack {
                                                    Image(item.imageName)
                                                        .resizable()
                                                        .scaledToFit()
                                                        .frame(width: 40, height: 40)
                                                        .clipShape(Circle())

                                                    Text(item.name)

                            Spacer()

                                                    HStack {
                                                        Button(action: {
                                                            if item.quantity > 0 {
                                                                item.quantity -= 1
                                                            }
                                                        }) {
                                                            Text("-")
                                                                .frame(width: 30, height: 30)
                                                                .foregroundColor(.orange)
                                                                .background(Color.white)
                                                                .cornerRadius(5)
                                                                .overlay(
                                                                    RoundedRectangle(cornerRadius: 5)
                                                                        .stroke(Color.orange, lineWidth: 1)
                                                                )
                                                        }

                                                        Text("\(item.quantity)")
                                                            .frame(width: 30)

                                                        Button(action: {
                                                            item.quantity += 1
                                                        }) {
                                                            Text("+")
                                                                .frame(width: 30, height: 30)
                                                                .foregroundColor(.orange)
                                                                .background(Color.white)
                                                                .cornerRadius(5)
                                                                .overlay(
                                                                    RoundedRectangle(cornerRadius: 5)
                                                                                                                   .stroke(Color.orange, lineWidth: 1)
                                                                                                           )
                                                                                                   }
                                                                                               }
                                                                                           }
                                                                                       }
                                                                                   }

                                                                                   Button(action: {
                                                                                       // Action for adding a new food (placeholder)
                                                                                   }) {
                                                                                       Image(systemName: "plus")
                                                                                           .resizable()
                                                                                           .frame(width: 40, height: 40)
                                                                                           .foregroundColor(.white)
                                                                                           .padding()
                                                                                           .background(Color.orange)
                                                                                           .clipShape(Circle())
                                                                                   }
                                                                                   .padding()
                                                                               }
                                                                               .navigationBarHidden(true)
                                                                           }
                                                                       }
                                                                   }

                                                                   struct FoodListView_Previews: PreviewProvider {
                                                                       static var previews: some View {
                                                                           FoodListView()
                                                                       }
                                                                   }
                                                                
