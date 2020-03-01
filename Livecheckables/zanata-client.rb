class ZanataClient
  livecheck :url   => "http://docs.zanata.org/en/release/release-notes/",
            :regex => %r{<a href="#[0-9]+">([0-9,\.]+)</a></li>}
end
