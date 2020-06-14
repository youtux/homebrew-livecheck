class Libcaca
  # The regex here matches unstable releases and is loose about it (`.*`), as
  # there are currently only beta releases and we don't know if there will be
  # releases candidates, etc. before there's a stable release. Hopefully we can
  # restrict this to stable releases in the future but it has to be loose for
  # the moment.
  livecheck do
    url :head
    regex(/^v?(\d+(?:\.\d+)+.*)/i)
  end
end
