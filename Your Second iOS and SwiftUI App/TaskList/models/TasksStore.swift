//Copyright 2020 Tom Swifty, swift.developer@icloud.com



class TasksStore {
    var tasks = [
         "Code a SwiftUI app",
         "Book an escape room",
         "Walk the cat",
         "Pick up heavy things and put them down",
         "Make karaoke playlist",
         "Present at iOS meetup group",
         "Climb El Capitan",
         "Learn to make baklava",
         "Play disc golf in every state",
         "100 movie reboot marathon"
        ].map { Task( name: $0 )}

    
    
}

