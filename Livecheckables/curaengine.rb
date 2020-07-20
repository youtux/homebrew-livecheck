class Curaengine
  # Releases like xx.xx or xx.xx.x are older than releases like x.x.x, so we
  # work around this less-than-ideal situation by restricting the minor version
  # to one digit. This won't pick up versions where the minor version is 10+
  # but thankfully that hasn't been true yet. This should be handled in a better
  # way in the future, to avoid the possibility of missing good versions.
  livecheck do
    url :head
    regex(/^v?(\d+\.\d(?:\.\d+)+)$/i)
  end
end
