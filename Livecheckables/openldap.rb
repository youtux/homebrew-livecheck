class Openldap
  livecheck do
    url "https://www.openldap.org/software/download/OpenLDAP/openldap-release/"
    regex(/openldap-(\d+(?:\.\d+)*)\.t/i)
  end
end
