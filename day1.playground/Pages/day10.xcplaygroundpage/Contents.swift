//: [Previous](@previous)

import Foundation
//
//Class:
//
//Class'lar structlara benzer yapıdadırlar fakat bazı farklılıkları da bulunmaktadır.
//Bunlardan bir tanesi olarak Classlar kendiliğinden initializer'a sahip değildir. Bu demektir ki eğer Classlarımızda propertyler varsa kendi initializerımızı oluşturmak zorundayız.
//Örneğin:
//
//class Takım {
//    var isim: String
//    var ulke: String
//
//    init(isim: String, ulke: String) {
//        self.isim = isim
//        self.ulke = ulke
//    }
//}
//
//instance oluşturma kısmı struct yapısındaki ile aynıdır.
//
//let takim1 = Takım(isim: "Fenerbahçe", ulke: "Turkiye")
//    print(takim1.ulke)
//
//Class inheritance:
//Struct yapısı ile Class yapısını ayıran farklardan biri de Class yapısında daha önce var olan bir Class'ın method ve propertylerini miras alabiliyor olmamızdır. Ayrıca miras aldığımız class hariç kendimiz de method ve propertyler ekleyebiliriz.
//Buna inheritance veya subclassing denir, miras alınan class "parent" veya "super" olarak adlandırılırken miras alan class "child" olarak adlandırılır.
//
//class VoleybolTakım: Takım {
//
//}
//let takim2 = VoleybolTakım(isim: "fbVolley", ulke: "Türkiye")
//
//
//class BasketTakım: Takım {
//    init(isim: String) {
//        super.init(isim: isim, ulke: "Türkiye")
//    }
//}
//
//let takim3 = BasketTakım(isim: "fb ülker")
//print(takim3.ulke)
//güvenli olması için Swift child classlarda her zaman "super.init"i zorunlu tutar.
//
//Method override:
//
//Child classlar ebeveynlerinde yer alan bir methodu kendileri kullanabilirler buna override etmek denir.Data
//
//class Kopek {
//    func havla() {
//        print("haw haw")
//    }
//}
//
//class Kangal: Kopek {
//    override func havla() {
//        print("haw haw gardas")
//    }
//}
//let karabas = Kangal()
//karabas.havla()
//Swift bir method override edilirken "override" anahtar kelimesini zorunlu tutar bu sayede yanlışlıkla yapılacak override işlemlerinin önüne geçilmiş olur.
//
//
//Final class yapısı:
//    class kalıtımı çok kullanışlı ve faydalı olsa da başka developerların bizim classımızdan inherit etmemesi için bazen bu özelliği devre dışı bırakmak isteyebiliriz.
//Swift bunun için bize "final" keywordünü sunuyor. Böylece hiçbir class bizim classımızdan inherit edemiyor olacak.
//kullanımı için classı tanımlarken başına sadece "final" anahtar kelimesini eklememiz yeterli.
//
//Obje kopyalama:
//Class ve structlar arasındaki bir diğer fark da nasıl kopyalandıklarıdır.
//Bir structı kopyaladığımızda orijinali ve yenisi farklı adreslerde tutulur yani bir tanesinde yapılan değişim diğerini etkilemez. Fakat bir classı kopyaladığımızda kopyası da aynı adresi gösterir.
//
//class Sanatci {
//    var isim = "yildiz tilbe"
//}
//var sarkici = Sanatci()
//var sarkiciKopya = sarkici
//sarkiciKopya.isim = "ibrahimTatlises"
//print(sarkici.isim)
//
//aynı işlemi struct yapısında yaparsak kopyada ismin değişmediğini gözlemleriz.
//
//Deinitializer:
//Bir diğer farkları da class yapısında deinitializer bulunmasıdır. Bir classa ait instance silinirken çalışacak kodu çalıştırır.
//
//class Kisi {
//    var isim = "Sari Cizmeli Mehmet Aga"
//
//    init() {
//        print("\(isim) dünyaya gözlerini açtı")
//    }
//    func selamVer() {
//        print("slm ben \(isim)")
//    }
//    deinit {
//        print("\(isim) vefat etti...")
//    }
//}
//
//for _ in 1...3 {
//    let kisi = Kisi()
//    kisi.selamVer()
//}
//Mutability:
//Struct ve class arasındaki son fark ise constantlara karşı nasıl davrandıklarıdır.
//Constant bir structımız var ise ve buna ait değişken bir property var ise bu propertyi yine de değiştiremeyiz çünkü structın kendisi constant.
//
//Fakat constant bir classımız var ise bunun içerisindeki değişken property değişebilir. Bundan dolayı classlarda property değiştiren methodlar için "mutating" keywordüne ihtiyaç duyulmamaktadır bu sadece struct yapısında gerekli.
//
//Eğer classın içindeki propertymizin değiştirilmesini istemiyor isek onu classın içinde tanımlarken başına "let" keywordünü eklememiz gerekiyor.
//
//class Sarkici {
//    let isim = "sagopa kajmer"
//}
