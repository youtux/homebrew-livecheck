class Libelf
  # The formula uses archive.org for the homepage and a mirrored version of the
  # last available archive. There seems to be some newer development in the
  # ELF Tool Chain project (https://sourceforge.net/p/elftoolchain/wiki/Home/)
  # but they don't create separate libelf releases. Altogether, there's nothing
  # we can currently check for a new version, so we're skipping this until
  # something changes.
  livecheck do
    skip "No version information available to check"
  end
end
