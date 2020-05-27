class Qrencode
  livecheck do
    url "https://fukuchi.org/works/qrencode/"
    regex(/Latest release.*?href="qrencode-([0-9\.]+)\.t/m)
  end
end
