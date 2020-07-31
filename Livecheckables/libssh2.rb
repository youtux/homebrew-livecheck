class Libssh2
  livecheck do
    url "https://libssh2.org/download/"
    regex(/libssh2[._-]v?(\d+(?:\.\d+)+)\./i)
  end
end
