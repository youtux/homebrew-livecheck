class Nagios
  livecheck do
    url "https://sourceforge.net/projects/nagios/"
    regex(%r{/.*nagios-.*/nagios[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
