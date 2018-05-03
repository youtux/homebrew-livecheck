class Archivemount
  livecheck :url => "http://www.cybernoia.de/software/archivemount.html",
            :regex => %r{href=".*?/archivemount-([0-9\.]+)\.t}
end
