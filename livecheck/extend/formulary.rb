require_relative "formula"

module Formulary
  class << self
    # extended to load the Livecheckable version of a formula

    def livecheckable_path(path)
      path_suffix = "../../Livecheckables/#{path.basename}"
      if (opt = path.realpath/path_suffix).exist?
        opt
      elsif (opt = Pathname(__dir__)/path_suffix).exist?
        opt
      end
    end

    def load_formula(name, path, contents, namespace)
      mod = Module.new
      const_set(namespace, mod)
      mod.module_eval(contents, path)

      lc_path = livecheckable_path(path)
      if lc_path&.exist?
        puts "Loading #{lc_path}" if Homebrew.args.debug?
        mod.module_eval(lc_path.read, lc_path)
      end

      class_name = class_s(name)

      begin
        mod.const_get(class_name)
      rescue NameError => e
        raise FormulaUnavailableError, name, e.backtrace
      end
    end
  end
end
