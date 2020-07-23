class Talloc
  livecheck do
    url "https://www.samba.org/ftp/talloc/"
    regex(/href=.*?talloc-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
