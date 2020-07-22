class Ii
  livecheck do
    url "https://dl.suckless.org/tools/"
    regex(/href=.*?ii-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
