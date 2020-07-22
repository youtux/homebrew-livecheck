class Pgroonga
  livecheck do
    url "https://packages.groonga.org/source/pgroonga/"
    regex(/href=.*?pgroonga-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
