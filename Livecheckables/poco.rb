class Poco
  livecheck do
    url "https://pocoproject.org/releases"
    regex(%r{href=.*?poco-v?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
