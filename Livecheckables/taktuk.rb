class Taktuk
  livecheck do
    url "https://gforge.inria.fr/frs/?group_id=274"
    regex(/href=.*?taktuk[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
