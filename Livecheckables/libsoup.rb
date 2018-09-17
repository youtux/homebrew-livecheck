class Libsoup < Formula
  livecheck :url => "https://download.gnome.org/sources/libsoup/cache.json",
            :regex => /libsoup-([\d.]+\.[\d.]+\.[\d.]+)\.t/
end
