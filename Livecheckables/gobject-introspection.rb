class GobjectIntrospection
  livecheck :url => "https://download.gnome.org/sources/gobject-introspection/cache.json",
            :regex => /gobject-introspection-([\d.]+\.[\d.]+\.[\d.]+)\.t/
end
