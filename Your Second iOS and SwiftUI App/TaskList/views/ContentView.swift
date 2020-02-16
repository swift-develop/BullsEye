//
//  ContentView.swift
//  TaskList
//
//  Created by Tom Grant on 2/13/20.
//  Copyright © 2020 Tom Grant. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var taskStore : TasksStore
    @State var modalIsPresented = false
    
    
    var body: some View {
        
        NavigationView {
            
            List( taskStore.tasks, rowContent: { task in Text( task.name ) })
                .navigationBarTitle("Tasks")
                .navigationBarItems(trailing:Button(action: {
                    
                    self.modalIsPresented = true
                    
                }) {
                    Image(systemName: "plus")
                    
                })
                .sheet(isPresented: $modalIsPresented) {
                    NewTaskView()
            }
        }
        
    }
    
    
    
    
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: TasksStore())
    }
}
