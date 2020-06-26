class Funcoeszz
  livecheck do
    url "https://funcoeszz.net/download/"
    regex(/href=.*?funcoeszz.v?(\d+(?:\.\d+)+)\.s/i)
  end
end
