func getFibonacciCortege(var numberOfSequence: Int)  -> (Int, [Int])
{
    if numberOfSequence<10 {
    println("WARNING: Sequence cannot be shorter than 10. Sequence length set to 10")
    numberOfSequence = 10
    }
    
    if numberOfSequence>92 {
        println("WARNING: Sequence cannot be longer than 92 as 93th number is bigger than \(Int.max) value. Sequence length set to 92")
        numberOfSequence = 92
    }
    
    //firstNumber might be changed to 0 in case of "modern" sequence
    let firstNumber = 1
    let secondNumber  = 1
    var sequence = [firstNumber, secondNumber]
    println("Argument = \(numberOfSequence)")
    
    var lengthOfSequence = sequence.count
    
    for firstNumber; lengthOfSequence < numberOfSequence; lengthOfSequence++ {
        var lastIndex = sequence.endIndex
        var nextNumber = sequence[lastIndex-2] + sequence[lastIndex-1]
        sequence.append(nextNumber)
    }
    
    var lastTenNumbers = [Int]()
    for var i=10; lastTenNumbers.count < 10; i--
    {
        lastTenNumbers.append(sequence[sequence.endIndex-i])
    }

    println("Sequence of 10 numbers is \(lastTenNumbers)")
    return(numberOfSequence, lastTenNumbers)
}

getFibonacciCortege(10)
