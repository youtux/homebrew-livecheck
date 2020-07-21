class Phplint
  # The downloads page uses `href2` attributes instead of `href`.
  livecheck do
    url "https://www.icosaedro.it/phplint/download.html"
    regex(/href2?=.*?phplint[._-]v?(\d+(?:\.\d+)+(?:[._-]\d{6,8})?)\.t/i)
  end
end
