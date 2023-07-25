import UIKit


//MARK: Task 1: Function Basics

//Create a function greetUser that takes a String parameter and returns a greeting message.
func greetUser(_ name: String) -> String{
    
    return "Welcome \(name)"
}
// Call the function with different names and print the output.
print (greetUser ("Muneera"))




//MARK: Task 2: Function Overloading
/*
 Write two functions named calculateArea:
 One that takes the radius of a circle and returns its area.
 Another that takes the length and width of a rectangle and returns its area.
 */
func calculateArea(_ radius:Float) -> Float{
    let pi = 3.14
    var area = 2 * Float(pi) * radius
    return area
}



func calculateArea(_ RectLength:Float, _ RectWidth: Float) -> Float{
    
    var RectArea = RectLength * RectWidth
    return RectArea
    
}

//Call both functions with appropriate arguments and display the results.
print(calculateArea(10))
print(calculateArea(20,10))




//MARK: Task 3: Nested Functions

//Define a function mathOperation that takes two integers and a string representing an operation ('add', 'subtract', 'multiply', 'divide').
//Inside mathOperation, create nested functions for each operation and return the result accordingly.

func mathOperation( num1 a:Int, num2 b :Int, _ operation: String ) -> Int
{
    func add(num1:Int, num2:Int) -> Int{
        let sum = num1 + num2
        return sum
    }
    func subtract(num1:Int, num2:Int) -> Int{
        
        let subtractfunc = num1 - num2
        return subtractfunc
    }
    func multiply(num1:Int, num2:Int) -> Int{
        
        let resultMultiply = num1 * num2
        return resultMultiply
    }
    func divide(num1:Int, num2:Int) -> Int{
        
        let divide = num1 / num2
        return divide
    }
    if  operation == "add"{
         return add(num1: a, num2: b)
    }
    else if operation == "subtract" {
       return  subtract(num1: a, num2: b)
    }
    else if operation == "multiply"{
       return multiply(num1: a, num2: b)
    }
    else {
        return divide(num1: a, num2: b)
    }
    
    
}
// Call mathOperation with different numbers and operations.
print (mathOperation(num1: 10, num2: 2, "add"))
print (mathOperation(num1: 20, num2: 3, "subtract"))
print (mathOperation(num1: 8 , num2: 6, "multiply"))
print (mathOperation(num1: 30, num2: 5, "divide"))

// MARK: Task 4: Higher-Order Functions

//Create an array of integers and use the map function to transform each element by adding 1 to it.

let array :Array<Int> = [0,2,3,4,5]

let mapfunction = array.map{
    i in i + 1
}
print (mapfunction)
// Use the filter function to keep only even numbers from the array.

let filterfunction = array.filter{
    
    i in i % 2 == 0
}
print (filterfunction)
// Utilize the reduce function to find the sum of all elements in the array.

let sum  = array.reduce(0) { x, y in
    x + y
}
print ("reduce function ",sum)




// MARK: Task 5: Closures

//Create a closure that takes integer and multiply it by itself and returns the result of this multiplication.

let getMuliplactionIntClosure: (Int) -> Int = {
    a in
    return a * a
}
getMuliplactionIntClosure(2)

//Create an array of integers and use the map function and pass your closure to the map function, finally print each element using forEach function.

let intArray: Array<Int> = [2,4,5,6,7,8]

let  mapInArray = intArray.map(getMuliplactionIntClosure)
 
mapInArray.forEach{
    i in print (i)
}




 
