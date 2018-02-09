class Taktuk
  livecheck :url => "https://gforge.inria.fr/frs/?group_id=274",
            :regex => %r{href=".*?taktuk-([0-9\.]+)\.t}
end
