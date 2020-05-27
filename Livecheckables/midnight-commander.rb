class MidnightCommander
  livecheck do
    url "https://midnight-commander.org/"
    regex(/Current version is: ([0-9\.]+)/)
  end
end
