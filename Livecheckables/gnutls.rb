class Gnutls
#livecheck.url   [lindex ${master_sites} 0]
#livecheck.regex "${name}-(\\d+(?:\\.\\d+)*)${extract.suffix}"
  livecheck :url => "https://www.gnupg.org/ftp/gcrypt/gnutls/v3.5/",
            :regex => /gnutls-(\d+(?:\.\d+)*)\.tar/
end
