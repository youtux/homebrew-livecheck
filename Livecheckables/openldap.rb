class Openldap
  livecheck :url   => "https://www.openldap.org/software/download/OpenLDAP/openldap-release/",
            :regex => /openldap-(\d+(?:\.\d+)*)\.t/
end
