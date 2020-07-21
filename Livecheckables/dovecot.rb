class Dovecot
  livecheck do
    url "https://dovecot.org/download"
    regex(/href=.*?dovecot[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
