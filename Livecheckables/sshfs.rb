class Sshfs
  livecheck do
    url :stable
    regex(/^sshfs[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
