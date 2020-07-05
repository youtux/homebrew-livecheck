class Nagios
  livecheck do
    url "https://sourceforge.net/projects/nagios/"
    regex(%r{/.*nagios-.*/nagios-([0-9,.]+)\.t})
  end
end
