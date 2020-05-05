class X264
  # There's no guarantee that the versions we find on the `release-macos` index
  # page are stable but there didn't appear to be a different way of getting
  # the version information at the time of writing.
  livecheck :url   => "https://artifacts.videolan.org/x264/release-macos/",
            :regex => /href=.+?x264-(r\d+)-/i
end
