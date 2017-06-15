class Dovecot
  livecheck :url => "https://dovecot.org/releases/2.2/",
            :regex => /dovecot-(\d+\.\d+([0-9rc.]+)?)\.tar/
end
