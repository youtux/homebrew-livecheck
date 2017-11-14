class Krb5
  livecheck :url => "https://web.mit.edu/kerberos/",
            :regex => /Current release: .*?>krb5-([0-9\.]+)</
end
