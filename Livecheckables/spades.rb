class Spades
  livecheck :url => "http://bioinf.spbau.ru/en/content/spades-download-0",
            :regex => %r{href=".*SPAdes-([0-9\.]+)\.t}
end
