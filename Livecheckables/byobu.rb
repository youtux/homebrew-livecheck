class Byobu
  livecheck :url => "https://launchpad.net/byobu",
            :regex => %r{href="https://launchpad.net/byobu/trunk/.*/byobu_([0-9\.]+)\.orig}
end
