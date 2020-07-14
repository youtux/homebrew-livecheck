class Talloc
  livecheck do
    url "https://www.samba.org/ftp/talloc/"
    regex(/href=.*?talloc-([0-9.]+)\.t/)
  end
end
