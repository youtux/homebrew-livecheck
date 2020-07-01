class Sshfs
  livecheck do
    url :stable
    regex(/^sshfs-(\d+(?:\.\d+)+)$/)
  end
end
