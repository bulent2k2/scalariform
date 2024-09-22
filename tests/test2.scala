çıktıyıSil
// eni ve boyu verilen bir dikdörtenin (ya da karenin) köşegen uzunluğunu nedir?
  tanım köşegen (en: Kesir, boy: Kesir) =
karekökü(karesi(en) + karesi(boy))

  satıryaz(köşegen(1, 1)) // birim karenin köşegeni 2'nin karekökü!
satıryaz(köşegen(3, 4)) // çok meşhur bir dik üçgen
satıryaz(köşegen(5, 12)) // bu da başka bir tane
  sil
// bir komutla kaplumbağaya renkli bir açı çizdirelim
  tanım açı(açı: Kesir = 90, renk: Renk = kırmızı) = {
  dez boy = 100
    kalemRenginiKur(siyah)
    ileri(boy)
    geri(boy)
    sağ(açı)
    kalemRenginiKur(renk)
    ileri(boy)
    geri(boy)
    sol(açı)
    }
  hızıKur(orta)
açı(30) // varsayılan renk kırmızı
açı() // varsayılan açı dik açı
açı(45, mavi)
açı(60, yeşil)
  gizle
