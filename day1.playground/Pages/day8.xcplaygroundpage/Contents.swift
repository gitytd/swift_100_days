//: [Previous](@previous)

import Foundation
//
//Structs:
//Swift kendi tiplerimizi oluşturmamıza müsade eder. Bu yapılara "struct" denir. Bu structlara kendi kendi değişkenlerini, sabitlerini ve fonksiyonlarını verebiliriz ve istediğimiz gibi kullanabiliriz.
//
//struct Araba {
//    var name: String
//}
//
//var araba = Araba(name: "Mercedes")
//print(araba.name)
//
//araba.name = "bmw"
//print(araba.name)
//
//Computed Properties:
//
//struct Araba {
//    var name: String
//    var elektrikliMi: Bool
//
//    var motorTuru: String {
//        if elektrikliMi {
//            return "\(name) elektrikli bir aractır"
//        }
//        else {
//            return "\(name) elektrikli arac değildir"
//        }
//    }
//}
//
//let arac1 = Araba(name: "TOGG", elektrikliMi: true)
//print(arac1.motorTuru)
//
//Property Observers:
//struct Surec {
//    var name: String
//    var yuzde: Int {
//        didSet {
//            print("\(name) şu an \(yuzde) tamamlandı")
//        }
//    }
//}
//
//var surec = Surec(name: "Download", yuzde: 0)
//surec.yuzde = 30
//surec.yuzde = 76
//surec.yuzde = 99
//
//Methodlar:
//struct'ın içindeki fonksiyonlara method denir.
//
//struct Ulke {
//    var nufus: Int
//    func vergiTopla() -> Int {
//        return nufus * 1000
//    }
//}
//
//let turkiye = Ulke(nufus: 80000000)
//print(turkiye.vergiTopla())
//
//Mutating methods:
//
//Swift güvenlik sağlamak için property değişimine default olarak müsade etmez, değişim yapmak istiyorsak methodun başına "mutating" keywordünü eklememiz gerekiyor.
//
//struct Kisi {
//    var name: String
//
//    mutating func gizle(){
//        name = "gizli"
//    }
//}
//    var kisi = Kisi(name: "süleyman")
//    kisi.gizle()
//print(kisi.name)
//
//String'e ait method ve propertyler:
//
//String bir structtur ve kendi method ve propertyleri vardır. Bunlardan bazıları:
//let string = "abc"
//
//stringde kaç karakter olduğunu öğrenmek için:
//print(string.count)
//
//spesifik harflerle başlayıp başlamadığını kontrol etmek için:
//print(string.hasPrefix("ab"))
//
//bütün harfleri büyütmek için:
//print(string.uppercased())
//
//her harfi alfabetik sıra ile bir array'e eklemek için:
//let str = "apsfjuoasjfasjza"
//print(str.sorted())
//
//Array'lere ait method ve propertyler:
//
//var meyveler = ["elma"]
//
//eleman sayısı için:
//print(meyveler.count)
//
//eleman eklemek için:
//toys.append("armut")
//
//dizideki yerini saptamak için:
//meyveler.firstIndex(of: "armut")
//
//
