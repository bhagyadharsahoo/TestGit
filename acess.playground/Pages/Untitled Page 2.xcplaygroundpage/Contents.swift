//: [Previous](@previous)

import Foundation
var unsignedOverflow = Int8.min
unsignedOverflow = unsignedOverflow &- 1
print(unsignedOverflow)
