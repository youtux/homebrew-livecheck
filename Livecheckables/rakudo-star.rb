class RakudoStar
  livecheck :url => "https://rakudo.perl6.org/downloads/star/",
            :regex => /href="rakudo-star-([0-9\.]+)\.t/
end
