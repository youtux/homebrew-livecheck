class Saxon
  livecheck do
    url :stable
    regex(%r{url=.+?/SaxonHE(\d+(?:[-.]\d+)+)J?\.(?:t|z)}i)
  end
end
