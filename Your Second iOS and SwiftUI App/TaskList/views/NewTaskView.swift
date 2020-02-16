//Copyright 2020 Tom Swifty, swift.developer@icloud.com

import SwiftUI

struct NewTaskView: View {
    var taskStore: TasksStore
    
    @State var inputText = ""
    
    var body: some View {
        Form {
            
            TextField("Task name", text: $inputText )
            Button("Add") {
                
            }
            .disabled( inputText.isEmpty )
            
        }
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(taskStore: TasksStore() )
    }
}
