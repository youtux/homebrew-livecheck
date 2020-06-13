class Mikutter
  livecheck do
    url "https://mikutter.hachune.net/download"
    regex(/href=.*?mikutter.?v?(\d+(?:\.\d+)+)\.t/i)
  end
end
