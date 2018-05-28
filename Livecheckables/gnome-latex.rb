class GnomeLatex
  livecheck :url => "https://download.gnome.org/sources/gnome-latex/3.28/",
            :regex => /href="LATEST-IS-([0-9\.]+)"/
end
