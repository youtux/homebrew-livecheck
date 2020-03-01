class Openldap
  livecheck :url   => "http://www.openldap.org/software/download/OpenLDAP/openldap-release/",
            :regex => /openldap-(\d+(?:\.\d+)*)\.t/
end
