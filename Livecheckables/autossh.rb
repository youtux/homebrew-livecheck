class Autossh
  livecheck do
    url :homepage
    regex(/href=.*?autossh-([0-9.]+[a-z]+)\.t/i)
  end
end
