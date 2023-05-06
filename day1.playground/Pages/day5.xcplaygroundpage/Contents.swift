//: [Previous](@previous)

import Foundation

Fonksiyonlar

fonksiyonlar belirli bir işe yarayan kodları tekrar tekrar yazmak yerine gerekli yerlerde o fonksiyonu çağırarak kullanmamıza yardımcı olur ve gereksiz kod tekrarının önüne geçmiş olur.

Swift dilinde örnek bir fonksiyon:

func merhaba() {
    print("merhaba hoşgeldiniz...")
}
merhaba()

merhaba hoşgeldiniz yerine onlarca satır kod da olabilirdi. Tekrar yazmak yerine sadece tek satırda fonksiyonu çağırarak bu işlemi gerçekleştirebiliyoruz.
    
Parametre kabul etme

fonksiyonları her kullanışımızda özelleştirerek çok daha güçlü hale getirebiliriz. Swift bize fonksiyonların içine değer gönderip onun çalışmasını etkilememize imkan tanıyor. Bu gönderdiğimiz değere parametre deniyor, örneğin print fonksiyonunun içine yazdığımız String değerleri gibi.

kare hesaplamaya yarayan bir fonksiyon yazmak istersek;

func kare(sayi: Int){
    print(sayi * sayi)
}

kare(sayi: 78)
kare(sayi: 5)


Değer döndürme

fonksiyonlar veri aldıkları gibi veri döndürme özelliğine de sahiplerdir.
Swift dilinde bunu yapmak için parametre listesinin "->" yapısı kullanılmaktadır. Ayrıca ok işaretinden sonra Swifte ne tipte bir veri döndürüleceğini de söylememiz gerekiyor.

func kare(sayi: Int) -> Int {
    return sayi * sayi
}

kare(sayi: 34)

tuples kullanarak birden fazla tipte veri de döndürebiliriz.

Ek bir özellik olarak Swift bize parametre kısmına 2 adet isim verme imkanı tanır. Bunlardan biri fonksiyon dışarıdan çağırılırken kullanılır diğeri de fonksiyonun içinde kullanılır.

func selamSoyle (kime isim: String){
    print("merhaba \(isim)")
}

selamSoyle(kime: "veli")


Parametre ismini gözardı etme

print fonksiyonu kullanırken parametre ismi kullanmıyoruz, bunun neden olduğunu araştırınca "omitting parameter labels" konusuna denk geldim.
bunu yapmak için iki parametre etiketinden biri olan external label yerine "_" işareti kullanmamız gerekiyor.

func selamSoyle (_ isim: String) {
    print("merhaba \(isim)")
}
selamSoyle("yahya")

ama yine de daha anlaşılır bir kod düzeni için external argument label ihmal edilmemelidir.

//
Default parametreler

print() fonksiyonuna kaç değer verirsek verelim terminalde her birinin yeni satıra geçerek yazıldığını görüyoruz çünkü default olarak new line kullanıyor.

biz de kendi parametrelerimize default değerler atayabiliriz bunun için veri tipinin arkasına "=" ekleyip ardından vermek istediğimiz değeri yazmamız yeterlidir.

func selamSoyle (_ isim: String, uslup: Bool = true) {
    if uslup == true {
        print("merhaba \(isim) bey")
    }
    else {
        print("hoş gelmedin \(isim)")
    }
}

selamSoyle("Ahmet", uslup: false)

Variadric fonksiyonlar

aynı tipten birden fazla sayıda parametre kabul edebilen fonksiyonlardır. Örneğin print() fonksiyonu.
bunu yapmak için fonksiyonu yazarken parametrenin tipinin ardından "..." kullanmamız gerekiyor.

func kare (sayilar: Int...) {
    for sayi in sayilar {
        print("\(sayi) karesi: \(sayi * sayi)")
    }
}

kare(sayilar: 3,4,5,6,7,8)

