class Perl
  livecheck do
    url :head
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
