class Fail2ban
  livecheck do
    url "https://github.com/fail2ban/fail2ban/releases"
    regex(%r{href="/fail2ban/fail2ban/tree/([0-9\.]+)})
  end
end
