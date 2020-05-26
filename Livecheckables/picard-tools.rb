class PicardTools
  livecheck do
    url "https://github.com/broadinstitute/picard/releases"
    regex(%r{href="/broadinstitute/picard/tree/([0-9\.]+)})
  end
end
