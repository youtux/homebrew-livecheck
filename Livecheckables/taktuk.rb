class Taktuk
  livecheck do
    url "https://gforge.inria.fr/frs/?group_id=274"
    regex(/href=".*?taktuk-([0-9.]+)\.t/)
  end
end
