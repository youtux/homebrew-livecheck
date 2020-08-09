class Writerperfect
  livecheck do
    url :stable
    regex(%r{url=.*?/writerperfect[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
