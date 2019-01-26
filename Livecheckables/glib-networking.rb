class GlibNetworking
  livecheck :url => "https://download.gnome.org/sources/glib-networking/cache.json",
            :regex => /glib-networking-([\d.]+\.[\d.]+\.[\d.]+)\.t/
end
