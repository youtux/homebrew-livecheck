class Gnumeric
  livecheck :url => "https://download.gnome.org/sources/gnumeric/1.12/",
            :regex => /href="LATEST-IS-([0-9\.]+)"/
end
