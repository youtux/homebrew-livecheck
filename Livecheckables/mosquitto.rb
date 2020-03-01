class Mosquitto
  livecheck :url   => "https://mosquitto.org/download/",
            :regex => %r{href=".*?/mosquitto-([0-9\.]+)\.t}
end
