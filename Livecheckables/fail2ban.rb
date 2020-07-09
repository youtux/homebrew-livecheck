class Fail2ban
  livecheck do
    url "https://github.com/fail2ban/fail2ban/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
