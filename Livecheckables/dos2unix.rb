class Dos2unix
  livecheck do
    url "https://waterlan.home.xs4all.nl/dos2unix/"
    regex(/href=.*?dos2unix-([0-9,.]+)\.t/i)
  end
end
