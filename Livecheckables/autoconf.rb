class Autoconf
  livecheck :url   => "https://git.savannah.gnu.org/git/autoconf.git",
            :regex => /^(?:autoconf-)?v?(\d+(?:\.\d+)+)$/i
end
