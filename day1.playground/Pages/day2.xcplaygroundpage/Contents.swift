////: [Previous](@previous)
//
//import Foundation
//
//let yahya = "messi"
//let yusuf = "mbaappe"
//let zek = "maradona"
//
//let goats = [yahya,yusuf,zek]
//
//print(goats[1])
//
// Sets
// Setler de arraylar gibi veri koleksiyonudur fakat 2 farkı vardır,
// 1- herhangi bir düzen sırasında sıralanmazlar, random olarak sıralanmaktadırlar.
// 2- hiçbir eleman iki kez bulunamaz, unique olmak zorundalar.
//
//let cities = Set(["edirne","istanbul","ankara","kırıkkale"])
//print(cities)
//
//let cities2 = Set(["edirne","istanbul","ankara","kırıkkale","edirne","istanbul","ankara","kırıkkale"])
//print(cities2)
//
//
//Tuples
//bu veri tipi birden fazla değeri tek bir değer içinde saklamamıza olanak sağlar. Arraylere benzerler ama bikaç fark mevcuttur.
//
//1- eleman ekleyip çıkartamayız, tuple'ın boyutu sabittir
//2- bir elemanın tipini değiştiremeyiz, her zaman ilk oluşturuldukları esnadaki tipte kalmak zorundadırlar.
//3- sıra numaraları veya isimleri ile gerekli elemanlara ulaşabiliriz.
//
//var name = (first: "Yahya", last:"Demir")
//
//print(name.0)
//print(name.last)
//
////not: tuple oluştuktan sonra da içindeki değerleri değiştirebiliriz ama veri tiplerini değiştirmek imkansızdır. yoksa hata alırız.
//
//name = (first: "tayyip", age: 23)
//print(name)
//
//Arrays vs Sets vs Tuples
//
//ilk bakışta benzer görünseler de birbirinden farklı kullanım senaryoları vardır.
//
//eğer belirli, ayarlanmış ve birbiriyle alakalı olan hepsinin net ismi veya pozisyonu olan değerleri saklamaya ihtiyacımız varsa tuple kullanmamız gerekir.
//
//eğer hepsinin eşsiz olmasını istediğimiz bir veri koleksiyonu oluşturacaksak veya belirli bir verinin listede olup olmadığını hızlıca kontrol edebilmek istiyorsak set kullanmalıyız.
//
//eğer veri koleksiyonumuzda kopyaların da yer almasını istiyorsak veya elemanların sıralaması önemli ise array kullanmalıyız.
//
//bu üçü arasında en yaygın olan arraylardir
//
//Dictionaries
//
//key, value şeklinde veri saklamaya yarar.
//
//let boy = [
//    "ronaldo": 1.87,
//    "Messi": 1.70]
//
//print(boy["Messi"])
// not: dictionarylere default değer ataması yapabiliriz.
//
//Boş koleksiyon yaratma
//
//sonradan içini doldurmak üzere boş koleksiyonlar da oluşturabiliriz.
//
//var takımlar = [String: String]()
//
//ardından şu şekilde ekleme yapabiliriz;
//
//takımlar["Messi"] = "PSG"
//
//aynısını array ve setler için de yapabiliriz ama setler de syntax biraz farklı olacaktır.
//
//var kelimeler = Set<String>()
//
//print(kelimeler)
//enums
//
//kullanım kolaylığı ve olası hataların önüne geçmek için kullanırız
//
//enum Result{
//    case basarili
//    case basarisiz
//}
//
//let result7 = Result.basarisiz
//
//bu şekilde değişkene değer atarken yazım hatalarının önüne geçmiş oluruz.
//örneğin;
//
//let result8 = "basarisizlik"  gibi
//
//enuma daha detaylı bilgiler de verebiliriz;
//
//enum Faaliyet{
//    case hic
//    case kosu(varisYeri: String)
//    case konusma(konu: String)
//    case sarkiSoyleme(sesDuzeyi: Int)
//}
//
//let konusma = Faaliyet.konusma(konu: "futbol")
//
//print(konusma)
//
//enum raw values
//anlamlı olmaları için bazen enumlara değer atayabiliriz
//
//enum Sehirler: Int{
//    case edirne
//    case istanbul
//    case ankara
//    case kirikkale
//}
//
//edirne ilk halinde 0 dır
//
//case edirne = 1 şeklinde değiştirirsek edirne 1'den başlar ve diğerleri de 1 artarak devam eder.
//
