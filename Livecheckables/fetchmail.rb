class Fetchmail
  livecheck :regex => %r{url=.+?/branch_\d+(?:\.\d+)*?/fetchmail-v?(\d+(?:\.\d+)+)\.t}i
end
