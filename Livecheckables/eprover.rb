class Eprover
  livecheck do
    url "https://wwwlehre.dhbw-stuttgart.de/~sschulz/WORK/E_DOWNLOAD/"
    regex(%r{href="V_([0-9.]+)/">V})
  end
end
