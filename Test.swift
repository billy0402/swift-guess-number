import Foundation

//輸入
func input() -> String {
    let keyboard = FileHandle.standardInput
    let inputData = keyboard.availableData
    return NSString(data: inputData, encoding: String.Encoding.utf8.rawValue)! as String
}

print("請輸入四個不重複數字")
var strInput = input()
strInput.remove(at: strInput.index(before: strInput.endIndex))
var ary = [Character]()

//只能輸入數字
for char in strInput {
    if char >= "0" && char <= "9" {
        ary.append(char)
    } else {
        print("輸入錯誤")
        break
    }
}

//四個數字
if ary.count == 4 {
    //不重複
    for i in 0...2 {
        if ary[i+1] == ary[i]{
            print("輸入重複")
            break
        }
    }
} else {
    print("輸入錯誤")
}