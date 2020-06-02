class Autossh
  livecheck do
    url "https://www.harding.motd.ca/autossh/"
    regex(/HREF="autossh-([0-9.]+[a-z]+)\.t/)
  end
end
