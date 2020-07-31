class SLang
  livecheck do
    url "https://www.jedsoft.org/releases/slang"
    regex(/href=.*?slang[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
