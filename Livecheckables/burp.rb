class Burp
  livecheck :url => "https://burp.grke.org/download.html",
            :regex => /<li>([0-9\.]+): Stable/
end
