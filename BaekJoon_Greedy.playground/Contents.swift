import Foundation

//11047
var readArray = readLine()!.split(separator: " ").map { Int(String($0))! }

var coinCnt = readArray[0]
var price = readArray[1]
var coinArray = Array(repeating: 0, count: coinCnt)
var cnt:Int = 0
var i:Int = 0

for j in 0...coinCnt-1 {
    coinArray[j] = Int(readLine()!)!
}

coinArray.sort(by: >)


while(price>0) {
    if(price - coinArray[i] >= 0) {
        price = price - coinArray[i]
        cnt = cnt + 1
    } else {
        i+=1
    }
}
print(cnt)

//1931

let n = Int(readLine()!)!
var talks = [(Int,Int)]()

for _ in 0..<n {
    let t = readLine()!.split(separator: " ").map{Int(String($0))!}
    let (s,e) = (t[0],t[1])
    talks.append((s,e))
}

talks.sort{
    if $0.1 == $1.1 {
        return $0.0 < $1.0
    }
    return $0.1 < $1.1
}

var end = 0
var cnt = 0

for (s,e) in talks {
    if s >= end {
        end = e
        cnt += 1
    }
}
print(cnt)
