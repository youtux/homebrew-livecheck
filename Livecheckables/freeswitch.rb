class Freeswitch
  livecheck :url   => "https://freeswitch.org/confluence/display/FREESWITCH/macOS+Installation",
            :regex => /<p>([0-9\.]+) .*?Current Production/
end
