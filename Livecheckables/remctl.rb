class Remctl
  livecheck do
    url "https://archives.eyrie.org/software/kerberos/"
    regex(/href=.*?remctl[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
