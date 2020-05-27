class Fontconfig
  livecheck do
    url "https://wiki.freedesktop.org/www/Software/fontconfig/"
    regex(/current stable.*? ([0-9\.]+)\./)
  end
end
