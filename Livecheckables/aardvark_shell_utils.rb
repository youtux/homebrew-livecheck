class AardvarkShellUtils
  livecheck do
    url "http://downloads.laffeycomputer.com/current_builds/shellutils/"
    regex(/href=.*?aardvark_shell_utils[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
