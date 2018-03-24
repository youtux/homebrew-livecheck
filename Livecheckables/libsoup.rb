class Libsoup < Formula
  livecheck :url => "https://download.gnome.org/sources/libsoup/cache.json",
            :regex => /libsoup-(2\.60\.[\d.]+)\.t/
end
