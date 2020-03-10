class Nss
  livecheck :url   => "https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSS/NSS_Releases",
            :regex => /href="[^"]*?NSS_(\d+(?:\.\d+)+)_release_notes"/
end
