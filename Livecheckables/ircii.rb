class Ircii
  livecheck do
    url "http://www.eterna.com.au/ircii/"
    regex(/current release is ircII ([0-9]+)/)
  end
end
