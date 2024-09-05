//
//  ContentView.swift
//  CustomListSwipe
//
//  Created by Manyuchi, Carrington C on 2024/09/05.
//

import SwiftUI

struct ListSwipeActions: View {
    
    @State var fruits: [String] = [
    "Apple", "Banana", "peach", "orange"
    ]
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }
                        .tint(.black)
                        Button("Save") {
                            
                        }
                        .tint(.green)
                        Button("Junk") {
                        }
                        .tint(.red)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button("Share") {
                            
                        }
                        .tint(.yellow)
                        
                    }
            }
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

#Preview {
    ListSwipeActions()
}
