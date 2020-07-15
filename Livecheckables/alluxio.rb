class Alluxio
  livecheck do
    url "https://downloads.alluxio.io/downloads/files/"
    regex(%r{href=.*?(\d+(?:\.\d+)+)/?["' >]})
  end
end
