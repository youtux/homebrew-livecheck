class GtkVnc < Formula
  livecheck :url => "https://download.gnome.org/sources/gtk-vnc/cache.json",
            :regex => /gtk-vnc-([\d.]+)\.tar\.xz/
end
