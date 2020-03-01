class Duply
  livecheck :url   => "https://sourceforge.net/projects/ftplicity/",
            :regex => %r{<title><!\[CDATA\[/duply \(simple duplicity\).*?duply_([0-9\.]+)\.t}
end
