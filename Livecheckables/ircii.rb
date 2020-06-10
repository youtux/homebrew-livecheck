class Ircii
  livecheck do
    url :homepage
    regex(/current release is ircII ([0-9]+)/)
  end
end
