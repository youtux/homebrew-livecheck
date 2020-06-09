class Libuecc
  livecheck do
    url :head
    regex(%r{href='/libuecc/tag/\?h=v([0-9]+)'>})
  end
end
