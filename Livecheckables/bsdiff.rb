class Bsdiff
  # We use the HTTP URL for the homepage here because the site redirects this
  # from HTTPS to HTTP, which makes open-uri give a "redirection forbidden"
  # error. The site supports HTTPS, it just doesn't want to use it for the
  # bsdiff page, for whatever reason.
  livecheck do
    url "http://www.daemonology.net/bsdiff"
    regex(/href=.*?bsdiff[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
