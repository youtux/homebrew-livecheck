class Ragel
  # TODO: Return to using `url :homepage` once the SSL certificate verification
  # issue is resolved on the upstream server.
  livecheck do
    url "http://www.colm.net/open-source/ragel/"
    regex(/Stable.*?href=.*?ragel[._-]v?(\d+(?:\.\d+)+)\.t/im)
  end
end
