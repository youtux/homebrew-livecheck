class Vncsnapshot
  livecheck :regex => %r{url=.+?/vncsnapshot-v?(\d+(?:\.\d+)+[a-z]?)-src\.t}i
end
