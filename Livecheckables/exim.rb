class Exim
  # The upstream download page at https://ftp.exim.org/pub/exim/exim4/ places
  # maintenance releases (e.g., 4.93.0.4) in a separate "fixes" subdirectory.
  # As a result, we can't create a check that finds both the main releases
  # (e.g., 4.93) and the aforementioned maintenance releases. The Git repo tags
  # seem to be the best solution currently and we're using the GitHub mirror
  # below since the upstream repo (git://git.exim.org/exim.git) doesn't work
  # over https.
  livecheck do
    url "https://github.com/Exim/exim.git"
    regex(/^exim[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
