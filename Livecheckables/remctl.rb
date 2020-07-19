class Remctl
  livecheck do
    url "https://archives.eyrie.org/software/kerberos/"
    regex(/href=.*?remctl-([0-9.]+)\.t/i)
  end
end
