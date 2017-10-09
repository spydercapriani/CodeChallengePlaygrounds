//: [Previous](@previous)

import Foundation

var sampleArray = [9, 81, 0, 0, 5, 7, 27, 12, 46]

//: # Bubble Sort
func bubbleSort(unsorted: [Int]) -> [Int] {
    var sorted = unsorted
    var swappedValue = Bool()
    
    repeat {
        swappedValue = false
        
        for (index, number) in sorted.enumerated() {
            if sorted.count > index+1 && number > sorted[index+1] {
                sorted.swapAt(index, index+1)
                swappedValue = true
            }
        }
    } while swappedValue
    return sorted
}

print("This is the array BEFORE bubble sort: \(sampleArray)")
let bubbleSortedArray = bubbleSort(unsorted: sampleArray)
print("This is the array AFTER bubble sort: \(bubbleSortedArray)\n")


//: # Insertion Sort
func insertionSort(array: [Int]) -> [Int] {
    var sortedArray = array
    
    for (index, number) in sortedArray.enumerated() {
        var previousPosition = index - 1
        while(previousPosition >= 0 && sortedArray[previousPosition] > number){
            sortedArray.swapAt(previousPosition + 1, previousPosition)
            previousPosition -= 1
        }
    }
    
    return sortedArray
}

print("This is the array BEFORE insertion sort: \(sampleArray)")
let insertionSortedArray = insertionSort(array: sampleArray)
print("This is the array AFTER insertion sort: \(insertionSortedArray)\n")

//: # Merge Sort
func merge(leftArray: [Int], rightArray: [Int]) -> [Int] {
    // Index of items to compare
    var leftIndex = 0
    var rightIndex = 0
    
    // Array containing the sorted items
    var sortedArray = [Int]()
    
    // Compare the elements and add them to the sorted array *in order*
    while leftIndex < leftArray.count && rightIndex < rightArray.count {
        if leftArray[leftIndex] < rightArray[rightIndex] {
            // Moving left item into array
            sortedArray.append(leftArray[leftIndex])
            leftIndex += 1
        } else if leftArray[leftIndex] > rightArray[rightIndex] {
            // Moving right item into array
            sortedArray.append(rightArray[rightIndex])
            rightIndex += 1
        } else {
            // Numbers were identical
            sortedArray.append(leftArray[leftIndex])
            leftIndex += 1
            sortedArray.append(rightArray[rightIndex])
            rightIndex += 1
            
        }
    }
    
    // At this point, the elements were compared and sorted properly,
    // so we just need to append the rest of the items to the array
    while leftIndex < leftArray.count {
        // Moving left item into array
        sortedArray.append(leftArray[leftIndex])
        leftIndex += 1
    }
    while rightIndex < rightArray.count {
        // Moving right item into array
        sortedArray.append(rightArray[rightIndex])
        rightIndex += 1
    }
    
    return sortedArray
}


func mergeSort(array: [Int]) -> [Int] {
    // If our array only has one item, we're done
    guard array.count > 1 else { return array }
    
    // Find the middle of the array
    let middleIndex = array.count / 2
    
    // Recursively sort the left and right parts of the array
    let leftArray = mergeSort(array: Array(array[0..<middleIndex]))
    let rightArray = mergeSort(array: Array(array[middleIndex..<array.count]))
    
    return merge(leftArray: leftArray, rightArray: rightArray)
}

print("This is the array BEFORE merge sort: \(sampleArray)")
let mergeSortedArray = mergeSort(array: sampleArray)
print("This is the array AFTER insertion sort: \(mergeSortedArray)\n")

//: Quick Sort
func quickSort(unsorted: [Int]) -> [Int] {
    var index = 0
    var numberOfSlots = 1
    var temp2DArray = [unsorted]
    var uniqueValues = Set<Int>()
    
    repeat {
        // divide array in middle values, less than middle and
        // ﻿more than middle values
        var dividedArrays = (lessValues: [0], middleValues: [0], moreValues: [0])
        let middleValue = temp2DArray[index][(temp2DArray[index].count-1)/2]
        
        dividedArrays.lessValues = temp2DArray[index].filter {$0 < middleValue}
        dividedArrays.middleValues = temp2DArray[index].filter {$0 == middleValue}
        dividedArrays.moreValues = temp2DArray[index].filter {$0 > middleValue}
        
        // insert the 3 new arrays sorted into the result set
        dividedArrays.moreValues.count > 0 ? temp2DArray.insert(dividedArrays.moreValues, at: index + 1) : ()
        temp2DArray.insert(dividedArrays.middleValues, at: index + 1)
        dividedArrays.lessValues.count > 0 ? temp2DArray.insert(dividedArrays.lessValues, at: index + 1) : ()
        
        // remove the array that was just divided into 3 and
        // ﻿inserted into temp2DArray
        temp2DArray.remove(at: index)
        
        // if there is only one value in the current slot,
        // move on to the next slot
        if temp2DArray[index].count > 1 {
            // if we have multiple values in the slot,
            // check to see if the values are identical,
            // if so we can move to the next slot
            uniqueValues = Set(temp2DArray[index])
            uniqueValues.count == 1 ? ( index += 1 ) : ()
        } else  {
            index += 1
        }
        numberOfSlots = temp2DArray.count
        
    } while index < numberOfSlots
    
    // when done sorting, create the 1D array from the 2D array
    var sorted = [Int]()
    for slot in temp2DArray {
        for value in slot {
            sorted.append(value)
        }
    }
    return sorted
}

print("This is the array BEFORE quick sort: \(sampleArray)")
let quickSortedArray = quickSort(unsorted: sampleArray)
print("This is the array AFTER quick sort: \(quickSortedArray)\n")

//: [Next](@next)
