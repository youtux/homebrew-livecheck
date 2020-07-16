class Libwps
  livecheck do
    url "https://sourceforge.net/projects/libwps/files/libwps/"
    regex(%r{href=.*?libwps(?:/|[._-])v?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
