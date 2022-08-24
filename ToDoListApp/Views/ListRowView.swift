//
//  ListRowView.swift
//  ToDoListApp
//
//  Created by pavel on 24.08.22.
//

import SwiftUI



struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = "First item"
    static var item2 = "Second item"
    
    static var previews: some View {
        Group {
            ListRowView(item: ItemModel(title: item1, isCompleted: true))
            ListRowView(item: ItemModel(title: item2, isCompleted: false))
        }
        .previewLayout(.sizeThatFits)
    }
        
}
