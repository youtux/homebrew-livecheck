class Openldap
  livecheck do
    url "https://www.openldap.org/software/download/OpenLDAP/openldap-release/"
    regex(/openldap[._-]v?(\d+(?:\.\d+)*)\.t/i)
  end
end
