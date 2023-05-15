//: [Previous](@previous)

import Foundation
//
//Protokoller:
//Protokoller bir şeyin hangi method veya propertylere sahip olmak zorunda olduğunu belirtme biçimidir diyebiliriz. Daha sonra Swift'e hangi tiplerin bu protokolü kullanacağını söyleriz buna "adopting" veya "conforming" denmektedir.
//bir protokolden instance meydana getirilemez. Ancak onu uygulayan struct ve classlar kurulabilir.
//protocol Identifiable {
//    var id: String {get set}
//
//}
//
//struct Kullanici: Identifiable {
//    var id: String
//}
//
//func gosterID(thing: Identifiable) {
//    print("benim id: \(thing.id)")
//}
//
//Protokol Inheritance:
//Bir protokol diğer protokollerden miras alabilir. Fakat classlarda bu özellik yoktur. 3 adet protokol belirleyip ardından bunların hepsini inherit eden ayrı bir protokol tanımlarsak:
//
//protocol Maas {
//    func hesapla() -> Int
//}
//
//protocol EgitimGerekli {
//    func egitim()
//}
//
//protocol IzinGunu {
//    func izineCik(gunSayisi: Int)
//}
//
//protocol Calisan: Maas, EgitimGerekli, IzinGunu {
//
//}
//Extension:
//Extensionlar sayesinde mevcut tiplere method ekleyip orijinal dizaynlarında olmayan şeyler yaptırabiliriz.
//Örneğin Int tipine bir extension ile "kare" methodu ekleyerek mevcut sayının karesini döndürmesini sağlayalım.
//
//extension Int {
//    func karesi() -> Int {
//        return self * self
//    }
//}
//
//let sayi = 9
//print(sayi.karesi())
//
//Swift extensionlara "stored property" eklememize müsade etmez onun yerine "computed property" kullanmak zorundayız. Örneğin ciftSayi computed propertysi tanımlayabiliriz bu property eğer çift bir sayı tutuyorsa true değerini döndürecek.
//
//extension Int {
//    var ciftSayi: Bool {
//        return self % 2 == 0
//    }
//}
//print(sayi.ciftSayi)
//
//Protokol Extension:
//Protokoller bir şeyde hangi methodların bulunması gerektiğini belirlememizi sağlar ama methodun içine kod yazmamıza müsade etmez. Extensionlar methodların içine kod yazmamıza müsade eder ama sadece bir veri tipine etki etmemize müsade eder aynı anda birden fazla veri tipine method ekleyemeyiz.
//
//Protocol Extension bu iki problemi de çözer: normal extensionlar gibidir ama bir protokolün tamamını extend ederler ve o protokolü uygulayan tüm veri tipleri değişikliklerden etkilenir.
//Örneğin:
//
//let fener = ["arda", "zajc","ismail","ferdi","ferdi"]
//let gs = Set(["kerem","muslera","yunus","icardi","icardi"])
//
//Swiftte hem array hem de set "Collection" adında bir protokolü uygulamaktadır. Bu protokole bir extension yazıp özet() methodu ekleyelim.
//
//extension Collection {
//    func ozet() {
//        print("toplam \(count) oyuncu var:")
//
//        for isim in self {
//            print(isim)
//        }
//    }
//}
//
//fener.ozet()
//gs.ozet()
//
//Protocol Oriented Programming:
//Protokol ve extensionları kullanarak, protokolleri bir nevi inherit ederek protokol oriented bir yaklaşım sergileyebiliriz.
//
//protocol Identifiable {
//    var id: String { get set}
//    func identify()
//}
//
//şimdi extension kullanarak yukarıdaki protokole bir default method vereceğiz.
//
//extension Identifiable {
//    func identify() {
//        print("my id is: \(id).")
//    }
//}

