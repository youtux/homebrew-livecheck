class Duck
  livecheck :url => "https://cyberduck.io/changelog/",
            :regex => %r{href=https://update.cyberduck.io/Cyberduck-([0-9,\.]+)\.zip}
end
