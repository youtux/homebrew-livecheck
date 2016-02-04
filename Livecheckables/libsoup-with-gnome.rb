class LibsoupWithGnome < Formula
  #Redirection from: "https://download.gnome.org/sources/libsoup/cache.json"
  livecheck :url => "http://ftp.cse.buffalo.edu/pub/Gnome/sources/libsoup/cache.json",
            :regex => /libsoup-([\d.]+)\.tar\.xz/
end
