class Libwps
  livecheck do
    url "https://sourceforge.net/projects/libwps/files/libwps/"
    regex(%r{href="/projects/libwps/files/libwps/libwps-([0-9\.]+)/"})
  end
end
