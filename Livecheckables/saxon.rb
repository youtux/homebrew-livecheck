class Saxon
  livecheck do
    url :stable
    regex(%r{url=.*?/SaxonHE(\d+(?:[.-]\d+)+)J?\.(?:t|zip)}i)
  end
end
