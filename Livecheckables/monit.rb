class Monit
  livecheck do
    url "https://mmonit.com/monit/dist/"
    regex(/href=.*?monit-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
