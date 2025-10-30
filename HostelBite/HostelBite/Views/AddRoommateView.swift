//
//  AddRoommateView.swift
//  HostelBite
//
//  Created by Sithum Raigamage on 2025-10-30.
//

import SwiftUI
import SwiftData

struct AddRoommateView: View {
    @ObservedObject var viewModel: AppViewModel
    @State private var name = ""

    var body: some View {
        VStack {
            Text("Add Roommate")
                .font(.headline)
            TextField("Enter name", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding()

            Button("Save") {
                
            }
            .buttonStyle(.borderedProminent)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    // Mock context and view model for preview
    let container = try! ModelContainer(for: Member.self)
    let vm = AppViewModel(context: container.mainContext)
    return AddRoommateView(viewModel: vm)
        .modelContainer(container)
}
