class GsettingsDesktopSchemas
  livecheck :url => "https://download.gnome.org/sources/gsettings-desktop-schemas/3.24/",
            :regex => /href="LATEST-IS-([0-9\.]+)"/
end
