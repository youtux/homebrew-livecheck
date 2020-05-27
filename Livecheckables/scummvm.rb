class Scummvm
  livecheck do
    url "https://www.scummvm.org/frs/scummvm/"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/?["']})
  end
end
