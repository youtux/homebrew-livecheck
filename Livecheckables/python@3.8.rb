class PythonAT38
  livecheck do
    url "https://www.python.org/downloads/"
    regex(%r{href=.*?ftp/python/(\d+(?:\.\d+)+)/}i)
  end
end
