//: [Previous](@previous)

import Foundation

//Closure'lar:
//
//Swift, fonksiyonları da diğer tipler gibi kullanmamıza müsade eder. Yani bir fonksiyonu oluşturup bunu bir değişkene atayıp daha sonra o fonksiyonu çağırmak için atadığımız variableı kullanabiliriz hatta fonksiyonumuzu başka fonksiyonlara argüman olarak bile gönderebiliriz.
//Bu şekildeki fonksiyonlara "closure" denmektedir.
//
//let araba = {
//    print("tekerlekler dönüyor")
//}
//araba()
//
//Closure'lara parametre kabul etme:
//Closurelar parametreleri fonksiyonlara göre biraz farklı şekilde kabul ederler.
//süslü parantez açıldıktan sonra normal parantez içinde argümanları sıralarız, parantez kapandıktan sonra swifte esas closure body'sinin başladığını haber vermek için "in" keywordunu kullanmamız gerekiyor.
//
//let araba = { (yer: String) in
//    print("araba ile \(yer) şehrine gidiyorum")
//}
//fonksiyonlarla arasında olan bir fark da çağırırken parametreyi parametre label kullanmadan göndeririz.
//araba("edirne")
//
//
//Closurelarda değer döndürme:
//
//parametrelerde olduğu gibi return işleminde de "in" anahtar kelimesinden hemen önce ekleyeceğimiz "->" ardından da "return" kullanacağız normal fonksiyonlarda olduğu gibi.
//
//
//let araba = { (yer: String) -> String in
//    return "araba ile \(yer) adlı şehire gidiyorum"
//}
//var msg = araba("erzurum")
//print(msg)
//
//Closureları parametre olarak kullanmak:
//closureların string veya integer gibi kullanımları olabildiğini biliyoruz bundan dolayı closureları aynı zamanda fonksiyonlara parametre olarak da gönderebiliriz
//bunun için parametre tipini şu şekilde belirliyoruz: "() -> Void" bu, parametre kabul etmez ve değer döndürmez demektir.
//
//let yuru = {
//    print("yürüyorum")
//}
//func gezi(action: () -> Void) {
//    print("hazırlanıyorum")
//    action()
//    print("ulaştımm")
//}
//gezi(action: yuru)
//
//Trailing closure syntax:
//bir fonksiyonun son parametresi bir closure ise Swift bize özel bir syntax kullanma imkanı sunar.
//"trailing closure syntax". Closure'ı parametre olarak göndermektense doğrudan süslü parantezin içine yazıyoruz.
//gezi(){
//    "merhabalar"
//}
//hatta başka hiçbir parametre olmadığı için parantezleri de kaldırabiliriz.
//gezi {
//    print("selam")
//}
//
