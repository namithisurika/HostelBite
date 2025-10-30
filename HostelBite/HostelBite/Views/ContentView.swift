//
//  ContentView.swift
//  HostelBite
//
//  Created by Sithum Raigamage on 2025-10-28.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) private var context
    @StateObject private var appVM: AppViewModel
    @StateObject private var groceryVM = GroceryViewModel()
    @State private var showAddRoommate = false
    @State private var showGroceries = false
    
    init(context: ModelContext) {
            _appVM = StateObject(wrappedValue: AppViewModel(context: context))
        }
    
    var body: some View {
        VStack {
            
            Text("🍴 HostelBite")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top)

            List {
                Section("Roommates") {
                    ForEach(appVM.roommates) { roommate in
                        Text(roommate.name)
                    }
                }
            }
            
            HStack {
                Button("➕ Add Roommate") {
                    showAddRoommate.toggle()
                }
                .buttonStyle(.borderedProminent)
                
                Button("🛒 Groceries"){
                    showGroceries.toggle()
                }
                .buttonStyle(.bordered)
            }
            .padding()
        }
        
        .sheet(isPresented: $showAddRoommate) {
            //do something
            AddRoommateView(viewModel: appVM)
        }
        
        .sheet(isPresented: $showGroceries) {
            //add grocies
            GrocerySelectionView(viewModel: groceryVM)
        }
    }
}

#Preview {
    // Use a preview container for SwiftData
    let container = try! ModelContainer(for: Member.self, Meal.self, Assignment.self)
    return ContentView(context: container.mainContext)
        .modelContainer(container)
}
