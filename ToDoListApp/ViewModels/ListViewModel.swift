//
//  ListViewModel.swift
//  ToDoListApp
//
//  Created by pavel on 25.08.22.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "First item", isCompleted: false),
            ItemModel(title: "Second item", isCompleted: true),
            ItemModel(title: "Third item", isCompleted: false)
            ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex { $0.id == item.id } {
            items[index] = item.updateCompletion()
        }
    }
}
