

hash= {
:wat => ["1st", "2nd", {:wut => [1, [["wutt", "wutt", "wuut", "wtt", "wata", "wea", "wer", "was", "warr", {:bbq => "sum good chick"}], "wut1"]]}]
}

puts hash[:wat][2][:wut][1][0][9][:bbq]


arr = [[0, 1, 2, 3, 4, {:secret => {:unlock => ["zero", 1]}}], "last"]
 puts arr[0][5][:secret][:unlock][1]