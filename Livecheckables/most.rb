class Most
  livecheck do
    url "https://www.jedsoft.org/releases/most/"
    regex(/href=.*?most-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
