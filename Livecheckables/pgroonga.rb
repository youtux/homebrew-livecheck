class Pgroonga
  livecheck do
    url "https://packages.groonga.org/source/pgroonga/"
    regex(/href="pgroonga-([0-9.]+)\.t/)
  end
end
