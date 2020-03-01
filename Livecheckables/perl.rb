class Perl
  livecheck :url   => "http://www.perl.org/get.html",
            :regex => %r{href=".*?/perl-([0-9\.]+)\.t}
end
