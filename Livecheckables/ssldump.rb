class Ssldump
  # This regex intentionally matches unstable versions, as only a beta version
  # (0.9b3) is available at the time of writing.
  livecheck do
    regex(%r{url=.+?/ssldump/([^/]+)/[^/]+\.t})
  end
end
