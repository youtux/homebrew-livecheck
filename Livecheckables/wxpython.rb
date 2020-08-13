class Wxpython
  livecheck do
    url :stable
    regex(%r{href=.*?/packages.*?/wxpython[._-]v?(\d+(?:\.\d+)*(?:[._-]?post\d+)?)\.t}i)
  end
end
