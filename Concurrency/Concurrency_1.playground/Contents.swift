import UIKit

// Concurrency Part 1

/*
 
 Concurrency vs Parallelisam
 
 --> Concurrency:
 
    * Doing multiple task one at time in manner using techniques like Time Slicing and Context Switching.
    * It shares single resource amongst all tasks running concurrently.
    * Ex: Two queues in front of single ticket counter.
    
 --> Parallelism:
 
    * Running multiple tasks simultanously on separate resource. (Multiple tasks running on multiple cores).
    * Ex: Two queues in front of two different ticket counters.
 
 
 --> Problems with Concurrency:
    
    * Data Inconsistency (Lost Update Problem, Phantom Read Problem, Dirty Read Problem, Unrepeatable Read Problem)
 
 --> How to achive concurrency in iOS:
 
    * Multithreading
    * GCD (Grand Centeral Dispatch)
    * Operation Queues
    * Modern Swift API (Task, Task Group, Async Await, Actor)
 
 --> GCD:
 
    * GCD are queue based API.
    * We submit our task as closure or workitem to these queues.
    * Task submitted gets picked in FIFO manner since it's quque based API.
    * GCD has several Thread Pools to execute the tasks.
    * Task submitted in task queue gets executed on Thread Pool.
 
--> Dispatch Queue:
    
    * It's abstraction layer on the top of queue.
    * GCD manages collection of dispatch queues.
    * The work submitted to these queues is executed on a pool of threads.
 
 --> Synchronous vs Asynchronous (Mannar of Execution):
 
    * Synchronous: Blocks the current execution till the submitted task execution gets complete.
    * Asynchronous: Continue the execution of current task while new task execute asynchronously.
 
 --> Serial vs. Concurrent (Order of Execution):
 
    * Serial: One task at time.
    * Task submitted to serial queue gets perform one after another.
    
    * Concurrent: Multiple tasks at time.
    * Task submitted to concurrent queue gets perform concurrently.
 
    * In both the queues task gets dispatched in FIFO manner.
 
    >>>> Main Queue is a serial queue.
 */

/*

// 1. Sync Execution
DispatchQueue.global().sync {
    (1 ... 10).forEach { print("Task 1 => \($0)") }
}

DispatchQueue.global().sync {
    (11 ... 20).forEach { print("Task 2 => \($0)") }
}

DispatchQueue.global().sync {
    (21 ... 30).forEach { print("Task 3 => \($0)") }
}

 */
/*
 
 // 2. Async Execution
 DispatchQueue.global().async {
 (1 ... 10).forEach { print("Task 1 => \($0)") }
 }
 
 DispatchQueue.global().async {
 (11 ... 20).forEach { print("Task 2 => \($0)") }
 }
 
 DispatchQueue.global().async {
 (21 ... 30).forEach { print("Task 3 => \($0)") }
 }
 
 */
