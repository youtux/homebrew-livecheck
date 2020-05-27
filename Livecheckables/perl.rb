class Perl
  livecheck do
    url "https://www.perl.org/get.html"
    regex(%r{href=".*?/perl-([0-9\.]+)\.t})
  end
end
