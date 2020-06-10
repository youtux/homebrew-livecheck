class LinkGrammar
  livecheck do
    url :homepage
    regex(%r{href=".*?/link-grammar-([0-9.]+)\.t})
  end
end
