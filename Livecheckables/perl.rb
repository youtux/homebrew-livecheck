class Perl
  livecheck do
    url "https://www.cpan.org/src/"
    regex(/href=.*?perl-v?(\d+(?:\.\d+)+)\.t/)
  end
end
