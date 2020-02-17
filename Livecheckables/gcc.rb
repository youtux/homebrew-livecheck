class Gcc
  livecheck :url => "https://gcc.gnu.org/git/gcc.git",
            :regex => %r{^releases/gcc-([\d\.]+)$}
end
