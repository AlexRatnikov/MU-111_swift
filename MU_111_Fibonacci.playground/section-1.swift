func getFibonacciCortege(var argument: Int)  -> (Int, Int)
{
    //firstNumber might be changed to 0 in case of "modern" sequence
    let firstNumber = 1
    let secondNumber  = 1
    var sequence = [firstNumber, secondNumber]
    println("Argument = \(argument)")
    
    var lengthOfSequence = sequence.count
    
    for firstNumber; lengthOfSequence < argument; lengthOfSequence++ {
        var lastIndex = sequence.endIndex
        var nextNumber = sequence[lastIndex-2] + sequence[lastIndex-1]
        sequence.append(nextNumber)
    }
    
    return(argument, sequence.last!)
}

getFibonacciCortege(10)
