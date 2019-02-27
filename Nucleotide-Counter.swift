public struct DNA  {
    var strand: String
    
    init!(strand: String) {
        self.strand = strand
    }
    
    func count(_ nucleotide: Character) -> Int {
        
        let result = strand.filter { $0 == nucleotide }.count
        return result
    }
    
    func counts() -> [String: Int]{
        var strandDict: [String: Int] = ["A": 0, "C": 0, "G": 0, "T":0]
        strandDict["A"] = strand.filter { $0 == "A" }.count
        strandDict["C"] = strand.filter { $0 == "C" }.count
        strandDict["G"] = strand.filter { $0 == "G" }.count
        strandDict["T"] = strand.filter { $0 == "T" }.count
        
        return strandDict
    }
    
}


