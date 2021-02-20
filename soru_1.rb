
def dosya_oku(dosya_ismi)
  file=File.open(dosya_ismi)
  metin = file.readlines()
  yazi=""
  metin.each do |m|
    yazi=yazi + m
  end
  return yazi
end 
metin =[] 
metin = dosya_oku("kelimeler.txt")
yazi = metin.split(" ")
yazi.delete(":")
hasharray=[]
  yazi.select.with_index do |kelime, index|
    kelime.delete!":" " "
    if index.even?
      hasharray.push(kelime)
 end
end
hasharrayB=[]
  yazi.select.with_index do |kelime, index|
    kelime.delete!":" " "
    if index.odd?
      hasharrayB.push(kelime)
 end
end
 def english (hasharrayB)
mix1= hasharrayB.shuffle[0]
mix2= hasharrayB.shuffle[0]
mix3= hasharrayB.shuffle[0]
mix4= hasharrayB.shuffle[0]
puts "A: #{mix1}"
puts "B: #{mix2}"
puts "C: #{mix3}"
puts "D: #{mix4}"
end
mix= hasharray.shuffle[0]
def turkish (hasharray)
  mix1= hasharray.shuffle[0]
  mix2= hasharray.shuffle[0]
  mix3= hasharray.shuffle[0]
  mix4= hasharray.shuffle[0]
  puts "A: #{mix1}"
  puts "B: #{mix2}"
  puts "C: #{mix3}"
  puts "D: #{mix4}"
  end
mixx=hasharrayB.shuffle[0]
def sıklar(x)
  x = ("a".."d").to_a
  x = x.shuffle[0]
end
puts "YUNUS İLE BİLGİ YARIŞMASINA HOŞGELDİNİZ!"
puts "HANGİ DİLDE KELİME BİLGİNİZİ ÖLÇMEK İSTERSİNİZ ?"
puts "İNGİLİZCE-TÜRKÇE(İŞLEM KODU:1)"
puts "TÜRKÇE-İNGİLİZCE(İŞLEM KODU:2)"
print "SEÇİMİNİZ:"
işlem_kodu= gets.chomp.to_i
hatali_cevaplar=[]
if işlem_kodu == 1
  x = ("a".."d").to_a
  x = x.shuffle[0]
  puts "1: #{mix} kelimesinin türkçe karşılığı nedir?"
  puts english(hasharrayB)
  print "CEVABINIZ: "
  soru1=gets.chomp.to_s
  soru1.downcase!
  sıklar(x)
  if soru1==sıklar(x)
    sonuc1= 25
  else
    hatali_cevaplar.push(1)
  end
  mix= hasharray.shuffle[0]
  puts "2: #{mix} kelimesinin türkçe karşılığı nedir?"
  puts english(hasharrayB)
  print "CEVABINIZ: "
  soru2=gets.chomp.to_s
  soru2.downcase!
  sıklar(x)
  if soru2==sıklar(x)
    sonuc2 =25
  else
    hatali_cevaplar.push(2)
  end
  mix= hasharray.shuffle[0]
  puts "3: #{mix} kelimesinin türkçe karşılığı nedir?"
  puts english(hasharrayB)
  print "CEVABINIZ: "
  soru3=gets.chomp.to_s
  soru3.downcase!
  sıklar(x)
  if soru3==sıklar(x)
    sonuc3= 25
  else
    hatali_cevaplar.push(3)
  end
  mix= hasharray.shuffle[0]
  puts "4: #{mix} kelimesinin türkçe karşılığı nedir?"
  puts english(hasharrayB)
  print "CEVABINIZ: "
  soru4=gets.chomp.to_s
  soru4.downcase!
  sıklar(x)
  if soru4==sıklar(x)
    sonuc4= 25
  else
    hatali_cevaplar.push(4)
  end
 elsif işlem_kodu == 2
  puts "1: #{mixx} kelimesinin ingilizce karşılığı nedir?"
  puts turkish(hasharray)
  print "CEVABINIZ: "
  soru1=gets.chomp.to_s
  soru1.downcase!
  x = ("a".."d").to_a
  x = x.shuffle[0]
  sıklar(x)
  if soru1==sıklar(x)
    sonuc1= 25
  else
    hatali_cevaplar.push(1)
  end
  mixx= hasharrayB.shuffle[0]
  puts "2: #{mixx} kelimesinin ingilizce karşılığı nedir?"
  puts turkish(hasharray)
  print "CEVABINIZ: "
  soru2=gets.chomp.to_s
  soru2.downcase!
  sıklar(x)
  if soru2==sıklar(x)
    sonuc2 =25
  else
    hatali_cevaplar.push(2)
  end
  mixx= hasharrayB.shuffle[0]
  puts "3: #{mixx} kelimesinin ingilizce karşılığı nedir?"
  puts turkish(hasharray)
  print "CEVABINIZ: "
  soru3=gets.chomp.to_s
  soru3.downcase!
  sıklar(x)
  if soru3==sıklar(x)
    sonuc3= 25
  else
    hatali_cevaplar.push(3)
  end
  mixx= hasharrayB.shuffle[0]
  puts "4: #{mixx} kelimesinin ingilizce karşılığı nedir?"
  puts turkish(hasharray)
  print "CEVABINIZ: "
  soru4=gets.chomp.to_s
  soru4.downcase!
  sıklar(x)
  if soru4==sıklar(x)
    sonuc4= 25
  else
    hatali_cevaplar.push(4)
  end
else
  puts "BÖYLE BİR İŞLEM TANIMLANMAMAKTADIR."
  puts "LÜTFEN TEKRAR DENEYİN..."
end
puts "TESTİNİZ BİTMİŞTİR"
sonuclar=sonuc1.to_i+sonuc2.to_i+sonuc3.to_i+sonuc4.to_i
puts "testten #{sonuclar} puan aldınız"
puts "hatalı yaptığınız sorular: #{hatali_cevaplar}"
puts "hatalı yaptığınız soruların cevapları:"
hatali_cevaplar.each do |h|
puts "#{h}.sorunun cevabı:"
end








