class Libssh2
  livecheck do
    url "https://libssh2.org/download/"
    regex(/libssh2-([0-9,.]+)\./i)
  end
end
