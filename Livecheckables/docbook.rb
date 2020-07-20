class Docbook
  livecheck do
    url "https://docbook.org/xml/"
    regex(%r{href=.*?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
