class Embulk
  livecheck do
    url "https://github.com/embulk/embulk.git"
    regex(/^v?(0\.9(?:\.\d+)+)$/)
  end
end
