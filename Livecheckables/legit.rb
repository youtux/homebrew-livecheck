class Legit
  livecheck do
    url :stable
    regex(%r{href=.*?/packages.*?/legit[._-]v?(\d+(?:\.\d+)*(?:[._-]?post\d+)?)\.t}i)
  end
end
