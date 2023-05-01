//: [Previous](@previous)

import Foundation

//Aritmetik Operatörler
//
//let ilkSkor = 4
//let ikinciSkor = 8
//
//değişkenlere değer atayıp direkt değişken isimleri ile işlem yapabiliyoruz.
//
//let toplam = ilkSkor + ikinciSkor
//let fark = ikinciSkor - ilkSkor
//
//çarpma ve bölme de yapabiliriz.
//
//let carpim = ilkSkor * ikinciSkor
//let bolum = ikinciSkor / ilkSkor
//
//bölüm sonucu kalanı hesaplamak için de % operatörünü kullanırız
//
//let kalan = ikinciSkor % 3

// operatör overloading

//+ operatörü ile stringleri birbirine ekleyebiliriz
//
//let bayram = "Bayramınız"
//let kutla = bayram + " kutlu olsun"
//
//aynı zamanda + operatörü ile arrayleri de birbirine ekleyebiliriz
//
//let bati = ["edirne","istanbul"]
//let dogu = ["erzurum","kars"]
//
//let iller = bati + dogu
//
//print(kutla)
//print(iller)
//
//Swift bir type safe dildir yani tipleri karıştırmanıza müsade etmez örneğin bir string ve integerı toplayamazsınız çünkü bu mantığa uygun değildir.

//Compound Operatörler
//
//Swiftte bir operatör ve atama işleminin birleştirildiği kısayol vardır.
//bu sayede bir değeri tek işlem ile değiştirip atayabiliriz.
//
//var puan = 50
//puan -=50
//
//benzer olarak stringler üzerinde de += kullanarak işlem gerçekleştirebiliriz
//
//var atasozu = "damlaya damlaya"
//atasozu += " göl olur"
//
//print(atasozu)

//Comparison Operatörleri
//
//Swift dilinde de matematiktekine benzer karşılaştırma operatörleri vardır.
//
//sayi1 = 4
//sayi2 = 7
//
//sayi1 == sayi2
//false döndürür
//
//sayi1 != sayi2
//true döndürür
//
//sayi1 >= sayi2
//sayi1 <= sayi2
//
//bunların hepsi stringlerde de çalışır çünkü stringler alfabetik olarak sıralanmaktadır
//
//"Messi" <= "Leo"

//Koşullar
//
//Swifte bir koşul verip o koşul doğru olduğunda içindeki kod bloğunu çalıştırmasını isteyebiliriz.

let oyuncu1 = 19
let oyuncu2 = 14
//
//if oyuncu1 > oyuncu2 {
//    print("oyuncu1 kazandı")
//} else{
//    print("oyuncu2 kazandı")
//}
//
//false durumunda else bloğunun içindeki kod çalışacaktır.oyuncu1
//
//else if kullanarak koşulları zincirleme şekilde de kullanabiliriz

//Koşulları birleştirme
//
//&& (and), ||(or) operatörleri
//
//if oyuncu1 > 18 && oyuncu2 > 18{
//    print("ikisi de 18den büyük")
//}
//
//if oyuncu1 > 18 || oyuncu2 > 18{
//    print("en az birisi 18den büyük")
//}
//Ternary operatör
//
//Swiftte nadiren kullanılan bir operatördür.
//bir if else bloğunun tek satırda yazılmış hali diyebiliriz.
//
//print(oyuncu1 == oyuncu2 ? "yaşları eşit" : "yaşları farklı")

//Switch statements
//
//eğer çok sayıda koşul içeren bi ifade yazacaksak kodun daha temiz görünmesi için switch case kullanmalıyız
//
//let gun = "perşembe"
//
//switch gun{
//case "pazartesi":
//    print("okula git")
//case"salı":
//    print("hiçbişi yapma")
//case"perşembe":
//    print("pazara git")
//default:
//    print("ajandaya bak")
//}
//
//bütün ihtimalleri göz önüne aldığımızdan emin olmak için "default" kullanmak zorunludur.

//Range operatörü
//
//Swift bize 2 adet range operatörü sunuyor. Bunlar ..< ve ...
//örneğin half-open operatörü ile 1..<4 1,2,3 rakamlarını içerirken
//
//closed ranger operatör ile 1...4 1,2,3,4 rakamlarını içerir
//
//switch case blokları ile verimli bir şekilde kullanılabilir fakat en alt kısma default değer eklemeyi unutmamak gerekir. 
