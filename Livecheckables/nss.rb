class Nss
  livecheck :url   => "https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSS/NSS_Releases",
            :regex => %r{href="/en-US/docs/Mozilla/Projects/NSS/NSS_([0-9\.]+)_release_notes"}
end
