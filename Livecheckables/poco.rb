class Poco
  livecheck do
    url "https://pocoproject.org/releases"
    regex(%r{href=.*?poco[._-]v?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
