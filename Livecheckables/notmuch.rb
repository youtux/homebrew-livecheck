class Notmuch
  livecheck do
    url "https://notmuchmail.org/releases/"
    regex(/href=.*?notmuch-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
