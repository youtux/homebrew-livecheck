class ZanataClient
  livecheck do
    url "https://docs.zanata.org/en/release/release-notes/"
    regex(%r{<a href="#[0-9]+">([0-9,\.]+)</a></li>})
  end
end
