class Povray
  livecheck :url => "https://github.com/POV-Ray/povray/releases",
            :regex => %r{Latest.*?href="/POV-Ray/povray/tree/v([0-9\.]+)}m
end
