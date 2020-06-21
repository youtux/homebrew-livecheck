class CernNdiff
  livecheck do
    url :head
    regex(/^(?:mad-?X.)?v?(\d+(?:[_.]\d+)+)$/i)
  end
end
