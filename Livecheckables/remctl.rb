class Remctl
  livecheck do
    url "https://archives.eyrie.org/software/kerberos/"
    regex(/href=.*?remctl-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
