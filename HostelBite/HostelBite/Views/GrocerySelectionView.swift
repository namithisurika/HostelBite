//
//  GrocerySelectionView.swift
//  HostelBite
//
//  Created by Sithum Raigamage on 2025-10-30.
//

import SwiftUI

struct GrocerySelectionView: View {
    @ObservedObject var viewModel: GroceryViewModel

    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.groceries) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        if viewModel.selectedItems.contains(where: { $0.id == item.id }) {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.green)
                        }
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        viewModel.toggleSelection(for: item)
                    }
                }
            }
            .navigationTitle("Select Groceries")
        }
    }
}

#Preview {
    GrocerySelectionView(viewModel: GroceryViewModel())
}
