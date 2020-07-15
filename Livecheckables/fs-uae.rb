class FsUae
  livecheck do
    url "http://fs-uae.net/stable/"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+(?:u\d+)?)/?["' >]}i)
  end
end
