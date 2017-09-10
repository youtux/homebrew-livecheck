class Lbdb
  livecheck :url => "https://www.spinnaker.de/lbdb/",
            :regex => %r{href="\.\./debian/lbdb_([0-9\.]+)\.t.*?">source package}
end
