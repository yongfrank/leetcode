//
//  QuickSort.swift
//  CLILeetcode
//
//  Created by Frank Chu on 2/22/23.
//

import Foundation

class Solution {
    func QuickSort(array: inout Array<Int>, left: Int, right: Int) {
        if left >= right { return }
        
        let pivot = array[left]
        var left_index = left
        var right_index = right

        while left_index < right_index {
            while array[right_index] >= pivot && left_index < right_index {
                right_index -= 1
            }
            array[left_index] = array[right_index]
            while array[left_index] <= pivot && left_index < right_index {
                left_index += 1
            }
            array[right_index] = array[left_index]
        }
        array[left_index] = pivot
        QuickSort(array: &array, left: left, right: right_index - 1)
        QuickSort(array: &array, left: left_index + 1, right: right)
    }

    func test() {
        // print(QuickSort(array: [10, 8], left: 0, right: 1))
        var arr = [-74,48,-20,2,10,-84,-5,-9,11,-24,-91,2,-71,64,63,80,28,-30,-58,-11,-44,-87,-22,54,-74,-10,-55,-28,-46,29,10,50,-72,34,26,25,8,51,13,30,35,-8,50,65,-6,16,-2,21,-78,35,-13,14,23,-3,26,-90,86,25,-56,91,-13,92,-25,37,57,-20,-69,98,95,45,47,29,86,-28,73,-44,-46,65,-84,-96,-24,-12,72,-68,93,57,92,52,-45,-2,85,-63,56,55,12,-85,77,-39]
        QuickSort(array: &arr, left: 0, right: arr.count - 1)
        print(arr)
    }
}
