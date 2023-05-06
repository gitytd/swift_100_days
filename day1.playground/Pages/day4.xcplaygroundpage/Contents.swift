////: [Previous](@previous)
//
//import Foundation
//
//Loops
//
//Swiftte loop yazmak için birden fazla yöntem vardır ama hepsi temelde aynı esasa dayanır: belirli bir kodu o değer "false" olana kadar art arda çalıştır.
//
//en yaygın olanı "for loop" dur. arrayler ve rangeler üzerinde döngü yapar ve her çalıştığında elemanlardan birini çeker ve bir sabite atar.
//
//let sayi = 1...10
//for numara in sayi {
//    print("sayi: \(numara)")
//}
//
//for loopunun verdiği sabiti kullanmayacağımız durumlarda "in" den önce "underscore" kullanmalıyız böylece swift gereksiz değerler üretmemiş olur.
//
//While loopu
//
//loop yazmanın bir diğer yolu da while looplarıdır.
//loopa kontrol etmesi için bir durum veririz ve o durum "true" olduğu sürece kod sürekli çalışıp durur.
//örnek olarak bir çocuğun saklambaç oynarken 100'e kadar sayması;
//
//var sayac = 1
//
//while sayac <= 100{
//    print(sayac)
//    sayac += 1
//}
//
//print("önüm arkam sağım solum saklanmayan ebedir")
//
//Repeat loopu
//
//üçüncü bir yol da repeat loopudur ama bu yöntem pek yaygın değildir. While loopuna oldukça benzerdir tek farkı gerekli şartın başta değil de sonda kontrol ediliyor olmasıdır.
//şu şekilde yazabiliriz:
//
//var sayac = 1
//
//repeat {
//    print(sayac)
//    sayac += 1
//} while sayac <= 100
//
//print("önüm arkam sağım solum sobe saklanmayan ebe")
//
//            koşul kontrolü en sonda yapıldığı için bu kodun en azından bir kez çalışması garanti altına alınmış olunur.
//
//Looptan çıkış
//
//"break" anahtar kelimesini kullanarak istediğimiz anda bir looptan çıkabiliriz.
//
//geriSayim = 100
//
//while geriSayim >= 0 {
//    print(geriSayim)
//
//    if geriSayim == 30 {
//        print("saymaktan sıkıldım")
//        break
//    }
//
//    geriSayim -= 1
//}
//
//geri sayım 30 olduğunda if bloğunun içindeki kod çalışacak ve while döngüsünden çıkılacaktır.
//
//iç içe looplardan çıkış
//
//bir loopun içine başka bir loop yerleştirirsek buna nested loop denir.
//örneğin 1'den 10'a kadar çarptım tablosu yapalım;
//
//for i in 1...10{
//    for j in 1...10{
//        let sonuc = i * j
//        print("\(i)* \(j) = \(sonuc)")
//    }
//}
//
// iki looptan da aynı anda çıkabilmek için dıştaki loopun başına "outerLoop" ifadesi ekliyoruz.
//
//outerLoop: for i in 1...10{
//    for j in 1...10{
//        let sonuc = i * j
//        print("\(i)* \(j) = \(sonuc)")
//
//        if sonuc == 50 {
//            print("yarısına geldik")
//            break outerLoop
//        }
//    }
//}
//
//break işlemini normal şekilde yapsaydık iç looptan çıkacaktık ama dış loop devam ediyor olacaktı.
//
//Eleman atlama:
//break kelimesi ile döngüden çıkabiliyoruz buna ek olarak eleman atlayarak döngüye devam etmek istersek
//"continue" kelimesini kullanmalıyız.
//
//örneğin 1'den 20'ye kadar olan sayıları yazdırırken çift sayıları atlamak istersek şöyle bir kod parçası işimizi görecektir.
//
//for i in 1...20 {
//    if i % 2 == 0 {
//        continue
//    }
//
//    print(i)
//}
//
//infinite (sonsuz) looplar
//
//while looplarını kullanarak sonsuz looplar yazmak yaygındır. while true kullanıp süslü parantezin içine kodumuzu yazabiliriz ama bir break noktası eklemek çok önemlidir yoksa kod hiçbir zaman sona ermez.
//
//
//var counter = 0
//
//while true {
//    print("AAAA ")
//    counter += 1
//
//    if counter == 273 {
//        break
//    }
//}
//
//true her zaman true olacağı için bu kod parçası sonsuza kadar "AAAA" yazacaktır ama içine bir break noktası koyarak bunu engellemiş oluyoruz.
