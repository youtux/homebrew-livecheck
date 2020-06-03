class Monit
  livecheck do
    url "https://mmonit.com/monit/dist/"
    regex(/href="monit-([0-9,.]+)\.t/)
  end
end
