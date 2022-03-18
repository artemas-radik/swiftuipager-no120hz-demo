//
//  ContentView.swift
//  Bitesize
//
//  Created by Artemas Radik on 9/19/21.
//

import SwiftUI
import SwiftUIPager

struct ContentView: View {
    @StateObject var page: Page = .first()
    var items = Array(0..<10)
    
    var body: some View {
        TabView {
            Pager(page: page,
                      data: items,
                      id: \.self,
                      content: { index in
                          // create a page based on the data passed
                
                if (index % 3 == 0) {
                    CardView(name: "Milk Chocolate", description: "They created this snack to channel everyone’s favorite part of a sundae cone: the chocolate-filled bottom! Each bite-sized mini waffle cone is filled with 100% real Belgian milk chocolate.", image: "milk-chocolate-DONE").clipped()
                }
                if (index % 3 == 1) {
                    CardView(name: "Organic Fruit Snacks", description: "Perfect for lunch boxes, pantries, and on-the-go - a fun flavorful mix of banana, strawberry, cherry, and peach.", image: "Organic-fruit-snacks").clipped()
                }
                if (index % 3 == 2) {
                    CardView(name: "Sprinkle Sugar Cookie Dough", description: "Real cookie dough bars. Real ingredients. With a mosaic of organic sprinkles, their plant-based, dairy-free, soy-free, gluten-free, and guilt-free Sprinkle Sugar Cookie Dough Bar is a decedent Whoa Dough flavor to satisfy any sweet tooth.", image: "Sprinkle-Sugar-Cookie-Dough").clipped()
                }
                 })
                .vertical()
                .sensitivity(PaginationSensitivity.low)
                .ignoresSafeArea(edges: [.top])
                .preferredColorScheme(.dark)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
            }
            Text("Orders")
                .tabItem {
                    Image(systemName: "list.bullet.rectangle")
                    Text("Orders")
            }
            //Text("The content of the second view")
            Text("Settings")
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Settings")
            }
        }
    }
}
