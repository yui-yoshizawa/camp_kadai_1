// 課題1-1

let itemA: Int = 1000
let itemB: String = "こんにちわ"
let itemC: Double = 42.195
let itemD: Bool = true




// 課題1-2

let valueA: Int = 100
let valueB: Int = 20

print(valueA + valueB)
print(valueA - valueB)
print(valueA * valueB)
print(valueA / valueB)




// 課題1-3

var valueC: Int = 4

var num = valueC
// 桁数
var digitCount: Int = 0

while num >= 1 {
    digitCount += 1
    num /= 10
}
// print(digitCount)

// 値を判別
if digitCount == 1 || digitCount == 2 || digitCount == 3 {
    print("\(valueC)は\(digitCount)桁の値です。")
} else {
    print("\(valueC)は4桁以上の値です。")
}




// 課題1-4

switch digitCount {
case 1:
    print("\(valueC)は\(digitCount)桁の値です。")
case 2:
    print("\(valueC)は\(digitCount)桁の値です。")
case 3:
    print("\(valueC)は\(digitCount)桁の値です。")
default:
    print("\(valueC)は4桁以上の値です。")
}




// 課題1-5

func calculationA(value: Int) {
    print(value * 10)
}
calculationA(value: 10)




// 課題1-6

func calculationB(valueA: Int, valueB: Int) {
    print(valueA % valueB)
}
calculationB(valueA: 100, valueB: 30)



// 課題1-7

func calculationC(valueA: Int, valueB: Int) -> Int {
    return valueA + valueB
}
let number = calculationC(valueA: 40, valueB: 25)

if number % 2 == 0 {
    // 偶数の場合
    print("計算結果\(number)は偶数です。")
} else {
    // 奇数の場合
    print("計算結果\(number)は奇数です。")
}




// 課題1-8
class HogeA {
    func put() {
        print("クラスAインスタンスです。")
    }
}
let insA = HogeA()    // インスタンスを作る
insA.put()    //　クラスの関数を呼び出し




// 課題1-9
class HogeB {
    func putName(name: String) {
        print("私の名前は\(name)です。")
    }
}

let takashi = HogeB()    // インスタンス化
takashi.putName(name: "たかし")    // 引数を渡して表示

let ken = HogeB()
ken.putName(name: "ケン")




// 課題1-10
class HogeC {
    // プロパティ
    var name: String = ""
    
    // イニシャライザ
    init(name: String) {
        self.name = name
    }
    
    // 表示
    func putName() {
        print("私の名前は\(name)です。")
    }
}

// やまだという定義をした HogeCクラス
let yamada = HogeC(name: "やまだ")    // インスタンス化
yamada.putName()

// みやたという定義をした HogeCクラス
let miyata = HogeC(name: "みやた")
miyata.putName()




// 課題1-11
enum User {
    // 値
    case name, age, bloodType
    
    func comment() -> String{    // -> String で、戻る関数にする。消すとエラーがでる。
        switch self {
        case .name:
            return "名前"
        case .age:
            return "年齢"
        case .bloodType:
            return "血液型"
            
        }
    }
}

let user: User = User.name
print(user.comment())




// 課題1-12

for i in 1...50 {
    print(i)
}




// 課題1-13

var valueE: [Int] = []

for i in 1...50 {
    valueE.append(i)    // 配列.append(値) 配列に要素を追加
}
print(valueE)




// 課題1-14

var valueF: [String] = ["リュウ", "ケン", "ナッシュ", "ガイル", "ベガ", "フェイロン"]
valueF.remove(at: 2)   // 配列名.remove(at: インデックス番号) 指定したインデックス番号の要素を削除
print(valueF)




// 課題1-15

let valueG: [Int] = [5, 4, 100, 49, 30, 1, 12, 0]

// 昇順
let syoujyun = valueG.sorted(by: <)    // 定数名がダサい。
print(syoujyun)

// 降順
let koujyun = valueG.sorted(by: >)
print(koujyun)




// 課題1-16

print(valueG.count)





// 課題1-17

let valueH = ["a": 1, "b": 2, "c": 3]
print(valueH["b"])    // 警告は無視しても構わない



// 課題1-18

if let b = valueH["b"] {
    print(b)
}




// 課題1-19

if let k = valueH["k"] {
} else {
    print("値はnilです。")
}




// 課題1-20
let valueI: [Any?] = [1, "こんにちわ" , "こんばんわ", nil, 3, 100, "よろしく", nil, "お願いします。"]    // valueI を宣言

for data in valueI {
    // print(data)
    if let a = data {
        // print(a)
        // nil以外の場合
        if a is Int {
            print("数値\(a)です。")
        } else if a is String {
            print(a)
        }
    } else {
        // nilの場合
        print("値はnilです。")
    }
}
    
    

