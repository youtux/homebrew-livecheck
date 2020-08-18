class AardvarkShellUtils
  # This regex is multiline since there's a line break between `href=` and the
  # attribute value on the homepage.
  livecheck do
    url :homepage
    regex(/href=.*?aardvark_shell_utils[._-]v?(\d+(?:\.\d+)+)\.t/im)
  end
end
