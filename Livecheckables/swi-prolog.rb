class SwiProlog
  livecheck do
    url "https://www.swi-prolog.org/download/stable/src"
    regex(/swipl[._-]v?(\d+\.\d+\.\d+)\.t/i)
  end
end
