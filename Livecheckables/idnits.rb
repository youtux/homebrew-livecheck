class Idnits
  livecheck do
    url "https://tools.ietf.org/tools/idnits/"
    regex(/href="idnits-([0-9.]+)\.t/)
  end
end
