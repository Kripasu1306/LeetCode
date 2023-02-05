import UIKit

func testBinarySearching()
{
    let arr = [1,7,3,9,2,9,3,5]
    let index = binarySearch(a: arr, key: 5, range: 0..<arr.count)
    print("index is \(index)")
    if(index == -1)
    {
        print("oooppps not found")
    }
    else
    {
        print("Yayyy!!! found")
    }
}

// Searching an element in an array using binary search is of logn complexity.
func binarySearch<T:Comparable>(a: [T], key: T, range: Range<Int>) -> Int
{
    var middleIndex: Int = -1
    if(range.lowerBound < range.upperBound)
    {
        //Take the middle element then check which side can we check for the key
        middleIndex = range.lowerBound + (range.upperBound - range.lowerBound)/2
        //key is below the middle index
        if(key < a[middleIndex])
        {
            return binarySearch(a: a, key: key, range: range.lowerBound..<middleIndex)
        }
        //Key is above the midde index
        else if(key > a[middleIndex])
        {
            return binarySearch(a: a, key: key, range: (middleIndex + 1)..<range.upperBound)
        }
        //Just return the middle index
        else
        {
            return middleIndex
        }
    }
    return middleIndex
}

testBinarySearching()
