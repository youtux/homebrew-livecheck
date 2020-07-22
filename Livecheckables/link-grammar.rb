class LinkGrammar
  livecheck do
    url :homepage
    regex(/href=.*?link-grammar-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
