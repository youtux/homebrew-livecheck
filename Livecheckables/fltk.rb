class Fltk
  livecheck do
    url "https://www.fltk.org/software.php"
    regex(/href=.*?fltk-v?(\d+(?:\.\d+)+(?:-\d+)?)-source\.t/i)
  end
end
