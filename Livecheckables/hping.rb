class Hping
  # The first-party download page (http://www.hping.org/download.php) has
  # removed links to any archive files, with a notice that Hping is no longer
  # actively developed. There won't be any new releases and we can't check for
  # any in this state, so it's appropriate to skip this. If the GitHub repo
  # (https://github.com/antirez/hping) starts creating releases, then it would
  # be appropriate to update this livecheckable but there are no releases at
  # the time of writing this.
  livecheck do
    skip "No longer actively developed"
  end
end
