class Ii
  livecheck do
    url "https://dl.suckless.org/tools/"
    regex(/href=.*?ii-([0-9.]+)\.t/i)
  end
end
