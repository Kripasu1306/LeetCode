import UIKit

var stack = [Int]()
var minValueStack = [Int]()

//min stack
/*
 we need to push pop get de top and get de min in the stack at all time
 we have one stack were we are pushing and poping the elements. the other stack which will give us de min value in the main stack till that index. so wen we push we need to see wats de min value in the stack till tat index and push the min value to the min value stack.
 */

func push(item: Int)
{
    stack.append(item)
    if let lastItem = minValueStack.last
    {
        minValueStack.append((lastItem < item) ? lastItem : item)
    }
    else
    {
        minValueStack.append(item)
    }
}

func pop()
{
    stack.removeLast()
    minValueStack.removeLast()
}

func topElement() -> Int?
{
    return stack.last ?? nil
}

func minValue() -> Int?
{
    return minValueStack.last ?? nil
}


push(item: 3)
print("topElement: \(topElement() ?? -1) minElement: \(minValue() ?? -1)")
push(item: 8)
print("topElement: \(topElement() ?? -1) minElement: \(minValue() ?? -1)")
push(item: 1)
print("topElement: \(topElement() ?? -1) minElement: \(minValue() ?? -1)")
push(item: 9)
print("topElement: \(topElement() ?? -1) minElement: \(minValue() ?? -1)")
push(item: 0)
print("topElement: \(topElement() ?? -1) minElement: \(minValue() ?? -1)")
push(item: 8)
print("topElement: \(topElement() ?? -1) minElement: \(minValue() ?? -1)")
pop()
print("topElement: \(topElement() ?? -1) minElement: \(minValue() ?? -1)")
pop()
print("topElement: \(topElement() ?? -1) minElement: \(minValue() ?? -1)")
