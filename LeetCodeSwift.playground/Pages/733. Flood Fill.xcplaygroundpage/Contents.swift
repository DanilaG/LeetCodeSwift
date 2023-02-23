final class Solution {
    
    private var result: [[Int]] = [[]]
    //private var visits: [[Bool]] = [[]]
    
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        result = image
        //visits = [[Bool]](repeating: [Bool](repeating: false, count: image[sr].count), count: image.count)
        guard image[sr][sc] != color else { return image }
        repaint(image[sr][sc], sr, sc, color)
        return result
    }
    
    private func repaint(_ initColor: Int, _ sr: Int, _ sc: Int, _ color: Int) {
        guard 0 <= sr, sr < result.count else { return }
        guard 0 <= sc, sc < result[sr].count else { return }
        guard result[sr][sc] == initColor else { return }
        
        result[sr][sc] = color
        
        repaint(initColor, sr, sc + 1, color)
        repaint(initColor, sr + 1, sc, color)
        repaint(initColor, sr, sc - 1, color)
        repaint(initColor, sr - 1, sc, color)
    }
}

Solution().floodFill([[0,0,0],[0,0,0]], 0, 0, 0)
