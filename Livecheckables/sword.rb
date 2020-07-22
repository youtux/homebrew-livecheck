class Sword
  livecheck do
    url "https://www.crosswire.org/ftpmirror/pub/sword/source/"
    regex(%r{href=.*?sword-v?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
