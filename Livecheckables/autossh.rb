class Autossh
  livecheck do
    url :homepage
    regex(/HREF="autossh-([0-9.]+[a-z]+)\.t/i)
  end
end
