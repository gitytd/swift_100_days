////: [Previous](@previous)
//
//import Foundation
//
//Parametre alan closureları parametre olarak kullanma:
//
//() -> yapısı ile swifte "parametre kabul etme, ve değer döndürme" talimatı veriyorduk. Ama parantezin içini closureımızın kabul etmesini istediğimiz herhangi bir veri tipini parametre olarak yazabiliriz.
//Bunu göstermek için bir gezi() fonksiyonu yazdım. Bu fonksiyon tek parametre alıyor o da bir closure ve bu closure da parametre olarak bir String alıyor.
//
//func gezi(eylem: (String) -> Void) {
//    print("hazırlanıyorum")
//    eylem("ankara")
//    print("ulaştım")
//}
//gezi() fonksiyonunu "trailin closure syntax" ile çağırdığımızda , closure kodumuz bir String kabul etmek zorunda.
//gezi{ (yer: String) in
//   print("\(yer) şehrine")
//}
//
//Değer döndüren closureları parametre olarak kullanma:
//
//func gezi(eylem: (String) -> String){
//    print("hazırlanıyorum")
//    let rota = eylem("amerika")
//    print(rota)
//    print("ulaştım")
//}
//
//gezi{ (a: String) -> String in
// return "rota: \(a)"
//}
//
//Parametre kısmını kısaltma:
//
//fonksiyonu şu şekilde çağırıyorduk:
//
//gezi{ (a: String) -> String in
//    return "rota: \(a)"
//    
//    aslında Swift bu closureın parametresinin bir string olacağını biliyor bu yüzden String tipinde olacağını söylemesek de olur.
//
//    gezi{ a -> String in
//        return "rota: \(a)"
//        String döndürmesi gerektiğini de biliyor, return tipini de kaldırabiliriz.
//
//        gezi{ a  in
//            return "rota: \(a)"
//            closureda tek satır kod olduğu ve bunu döndürmesi gerektiğini bildiği için swift "return" anahtar kelimesine de gerek duymaz bunu da kaldıralım.
//
//            gezi{ (a in
//                   "rota: \(a)"
//                   Swiftin daha da kısaltmamızı sağlayan bir kısayol syntaxı vardır. "a in" yazmak yerine Swifte bizim için otomatik parametre ismi vermesini söyleyebiliriz. "($0)" kullanacağız.
//gezi{
//    "rota: \($0)"
//}
//
//Çoklu parametre kabul eden closurelar:
//
//func gezi(eylem: (String,Int) -> String){
//    print("hazırlanıyorum")
//    let durum = eylem("wyoming",800)
//    print(durum)
//    print("ulaştım")
//}
//
//gezi{
//    "\($0) gittiğim yerdir, \($1) hızımdır"
//}
//
//func gezi() -> (String) -> Void {
//    return {
//        print("gideceğim eyalet: \($0)")
//    }
//}
//
//let lokasyon = gezi()
//lokasyon("montana")
//
//Değer yakalama:
//closure kendisinden önce yaratılmasına rağmen sayac değerini yakalar ve korur.
//
//func gezi() -> (String) -> Void {
//    var sayac = 1
//
//    return {
//        print("\(sayac).gideceğim eyalet: \($0)")
//        sayac += 1
//    }
//}
//let sonuc = gezi()
//sonuc("ny")
//sonuc("la")
//sonuc("tx")
//
//
