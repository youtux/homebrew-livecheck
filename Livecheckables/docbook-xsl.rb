class DocbookXsl
  livecheck do
    url :homepage
    regex(%r{^(?:release/)?(\d+(?:\.\d+)+)$}i)
  end
end
