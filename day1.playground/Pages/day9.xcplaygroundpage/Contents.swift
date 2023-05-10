//: [Previous](@previous)

import Foundation
//
//Inıtıalizers: diğer yazılım dillerindeki constructor yapısının Swift'deki karşılığıdır.
//Bütün struct'lar default bir initializer ile gelmektedir bu initializer'a memberwise initializer denir.
//default olanı kullanmak yerine kendimiz bir initializer verebiliriz.
//
//struct Kullanici {
//    var username: String
//
//    init() {
//        username = "gizli"
//        print("yeni bir kullanici olusturuldu")
//    }
//}
//
//initializerdan önce "func" yazmıyoruz, ama işlem bitmeden önce bütün propertylerin değerlerini aldığından emin olmamız gerek.
//
//şu an initializerımız parametre almıyor structı aşağıdaki şekilde oluşturmamız gerekiyor:
//
//var kullanici1 = Kullanici()
//kullanici1.username = "yahya"
////
//self keyword'ü:
//o esnada structın hangi instance'ının kullanıldığını göstermek için kullanılır.
//propert isimleri ile aynı isimde olan initializer parametreleri olduğu durumlarda gayet kullanışlıdır.
//Örneğin, Kisi adında ve isim propertysine sahip bir struct oluşturursak ve bu structın içinde isim adında bir parametre kabul eden bir initializer yazarsak "self" anahtar kelimesi bu ikisi "isim"i birbirinden ayırmamıza yardımcı olur. self.isim propertye işaret ederken sadece isim olan kısım parametreyi işaret eder.
//struct Kisi {
//    var isim: String
//
//    init(isim: String) {
//        print("\(isim) hayata geldi!")
//        self.isim = isim
//    }
//}
//var sahsiyet = Kisi(isim: "mahmood")
//
//Lazy property:
//Swift'in performans optimizasyonu için bize sunduğu bir özelliktir. Bazı propertylerin sadece ihtiyaç olduğu durumda yaratılmasına imkan tanır.
//
//
//struct FamilyTree {
//    init() {
//        print("aile agaci olusturuluyor")
//    }
//}
//
//struct Kisi {
//    var isim: String
//    lazy var familyTree = FamilyTree()
//    }
//
//Kisi structından ürettiğimiz her nesne için familyTree oluşmasını istemiyoruz bunun için "lazy" anahtar kelimesini kullanıyoruz.
//
//var kisi1 = Kisi(isim: "sülo")
//burada kisi1 nesnesi oluştu ama içerisinde familyTree yok.
//
//kisi1.familyTree
//kisi1 üzerinden familyTree'ye ulaştıktan sonra oluşturmuş olduk.
//
//Statik property ve methodlar:
//
//bir methodu veya propertyi static olarak deklare edersek bu o structtan türetilmiş bütün instancelarda geçerli olacaktır.
//Bunu örneklemek için bir Öğrenci structı oluşturup bunun içine öğrenci sayısını tutan bir statik property ekleyeceğiz ve her yeni öğrenci oluşturulduğunda bu değeri 1 artıracağız:
//
//struct Ogrenci {
//    var isim: String
//    static var ogrenciSayisi = 0
//
//    init(isim: String) {
//        self.isim = isim
//        Ogrenci.ogrenciSayisi += 1
//        print(Ogrenci.ogrenciSayisi)
//    }
//}
//
//let ogr1 = Ogrenci(isim: "sulo")
//let ogr2 = Ogrenci(isim: "şako")
//let ogr3 = Ogrenci(isim: "berkecan")
//
//Erişim kontrolü:
//
//Swift'te hangi kodun hangi property ve methodlara erişebileceğine dair kısıtlamalar getirebiliyoruz. Bu güvenlik açısından önemli bir özelliktir.
//
//struct Kisi {
//    private var id: String
//    
//    init(id: String) {
//        self.id = id
//    }
//    
//    func kimlikNo() -> String {
//        return "kimlik no: \(id)"
//    }
//}
//
//let yahya = Kisi(id: "302415")
//print(yahya.id)
//
//görüldüğü üzere id private olduğu için dışarıdan ulaşamıyoruz.
//
//let yahya = Kisi(id: "3024*******")
//
//print(yahya.kimlikNo())
//
//bunun sonunda çıktı olarak kimlik no'ya ulaştık.
