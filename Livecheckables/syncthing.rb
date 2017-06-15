class Syncthing
  livecheck :url => "https://github.com/syncthing/syncthing/releases",
            :regex => %r{href="/syncthing/syncthing/releases/download/.*syncthing-source-v([0-9,\.]+)\.tar}
end
