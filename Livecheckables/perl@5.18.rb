class PerlAT518
  livecheck do
    url "https://www.cpan.org/src/5.0/"
    regex(/href=.*?perl-(5\.18\.[0-9.]+)\.t/)
  end
end
