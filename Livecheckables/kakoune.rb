class Kakoune
  livecheck do
    url "https://github.com/mawww/kakoune/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
