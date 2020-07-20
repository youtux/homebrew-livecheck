class LinkGrammar
  livecheck do
    url :homepage
    regex(/href=.*?link-grammar-([0-9.]+)\.t/i)
  end
end
