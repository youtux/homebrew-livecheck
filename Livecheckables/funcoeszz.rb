class Funcoeszz
  livecheck do
    url "https://funcoeszz.net/download/"
    regex(/href=.*?funcoeszz.v?(\d+(?:\.\d+)+)\.sh/i)
  end
end
