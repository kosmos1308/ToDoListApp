//
//  ItemModel.swift
//  ToDoListApp
//
//  Created by pavel on 24.08.22.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
