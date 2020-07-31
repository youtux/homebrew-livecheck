class PerlAT518
  livecheck do
    url "https://www.cpan.org/src/5.0/"
    regex(/href=.*?perl[._-]v?(5\.18(?:\.\d+)+)\.t/i)
  end
end
