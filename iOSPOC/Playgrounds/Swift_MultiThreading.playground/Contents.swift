//: Playground - noun: a place where people can play
//Created On : XCode 11.0
// By : Rahul Goel CSE

import Foundation
import PlaygroundSupport

var str = "Hello, playground for multithreading"

//Grand Central Dispatch was developed by Apple in order to simplify work with systems with multi-core processors and released with Mac OS X Snow Leopard and iOS 4.

//When using dispatch queues you can choose to execute your code
    //synchronously or asynchronously.

//Dispatch queues are thread safe.
    //They can be accessed from different threads simultaneously without locking.
    //Developers can use dispatch queues to make their own code thread safe.

//Types of Dispatch Queues
    //1. Main Queue
        //When your app launches, the system automatically creates a serial queue and binds it to the application’s main thread. All UI tasks have to be run on the main thread.
    //2. Global Queue
        //There are four global concurrent queues which are provided and shared by the system.

//Quality of Service attribute indicates the priority of the tasks in the queue:
//1. User-interactive: update the UI or other small tasks that should occur instantly. Tasks in this queue are the highest priority tasks and they will run on the main thread.
//2. User-initiated: tasks in this queue are tasks that should run immediately -like opening documents or react to user actions. Tasks should complete in a few seconds or less. Will be mapped to High priority queue.
//3. Utility: this queue is for longer tasks that should complete immediately (think tasks with a loading bar such as downloading or importing). Tasks should complete in seconds or minutes. Will be mapped to Low priority queue.
//4. Background: tasks that takes minutes to hours to complete — indexing, syncing, etc… This queue is energy optimized and any disk I/O actions are throttled. Will be mapped to Background priority queue.




DispatchQueue.main.async {
    // Asynchronous code running on the main queue
}


DispatchQueue.global(qos: .background).async {
    // Do some background work
    DispatchQueue.main.async {
        // Update the UI to indicate the work has been completed
    }
}


//GCD vs OperationQueue, Which one came first

//Thread Safety

//Making a piece of code thread safe How?


let q1 = DispatchQueue(label: "one")

let q2 = DispatchQueue(label: "one")

let  semaphore = DispatchSemaphore(value: 0)
semaphore.wait()


//OperationQueue
let operationQ:OperationQueue = OperationQueue()
operationQ.maxConcurrentOperationCount = 2


let operation:Operation = Operation()

//Adding depedencies in operations

//What is the output of the below

let q = DispatchQueue(label: "sss")
q.async {
    DispatchQueue.main.async {
        print(1)
    }
    DispatchQueue.main.async {
        print(2)
    }
}
q.sync {
    print(3)
}



