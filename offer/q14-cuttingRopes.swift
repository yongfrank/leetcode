func cuttingRope(_ n: Int) -> Int {
        
        var notes = Array<Int>(repeating: 0, count: n + 1)
        
        for lenthOfRope in 2 ..< n + 1 {
            for firstCutLength in 1 ..< lenthOfRope {
                notes[lenthOfRope] = max(notes[lenthOfRope], firstCutLength * max(notes[lenthOfRope - firstCutLength], lenthOfRope - firstCutLength))
            }
        }
        print(notes)
        guard let max = notes.max() else { return -1 }
        return max
    }
    
    func test() {
        print(cuttingRope(5))
    }