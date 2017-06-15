class Fail2ban
  livecheck :url => "https://www.fail2ban.org/wiki/index.php/Downloads",
            :regex => %r{<i>stable</i>.*?>fail2ban-([0-9.]+)<}m
end
