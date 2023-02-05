import UIKit

/*
 Array can contain only 2 values 0, 1 and 2. we need to sort them. Use bucket sort.
 Left pointer will always have 0. Right pointer will always have 2. i will point at the current index.
 if i == 0 we swap it with left and increment i and left.
 if i == 2 we swap with de right and decreament right. but we dont do anything to i. because wat if i is in de middle and is 0 if we increemnt i. 0 will remain in de centre of the array.
 
 012102
 */

func bucketSort(list: [Int]) -> [Int]
{
    var sortedList = list
    func swap(i:Int, j: Int)
    {
        let temp = sortedList[i]
        sortedList[i] = sortedList[j]
        sortedList[j] = temp
    }
    
    var leftPointer = 0
    var rightPointer = sortedList.count - 1
    var i = 0
    
    while (i < rightPointer)
    {
        print("i \(i)  rightPointer: \(rightPointer)")
        //i == 0
        if(sortedList[i] == 0)
        {
            print("before swap: \(sortedList)")
            swap(i: i, j: leftPointer)
            print("after \(i) and \(leftPointer) swap: \(sortedList)")
            leftPointer += 1
            i += 1
        }
        //i==2
        else if(sortedList[i] == 2)
        {
            print("before swap: \(sortedList)")
            swap(i: i, j: rightPointer)
            print("after \(i) and \(rightPointer) swap: \(sortedList)")
            rightPointer -= 1
        }
        else
        {
            print("i is 1")
            i += 1
        }
    }
    
    return sortedList
}

let sortedArray = bucketSort(list: [0,1,2,1,0,2])
print("sorted array is : \(sortedArray)")
