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

    def load_formula(name, path, contents, namespace, flags:)
      raise "Formula loading disabled by HOMEBREW_DISABLE_LOAD_FORMULA!" if Homebrew::EnvConfig.disable_load_formula?

      mod = Module.new
      const_set(namespace, mod)

      begin
        mod.const_set(:BUILD_FLAGS, flags)
        mod.module_eval(contents, path)
      rescue NameError, ArgumentError, ScriptError => e
        $stderr.puts e.backtrace if Homebrew::EnvConfig.developer?
        raise FormulaUnreadableError.new(name, e)
      end
      class_name = class_s(name)

      lc_path = livecheckable_path(path)
      if lc_path&.exist?
        odebug "Loading #{lc_path}"
        mod.module_eval(lc_path.read, lc_path)
      end

      begin
        mod.const_get(class_name)
      rescue NameError => e
        class_list = mod.constants
                        .map { |const_name| mod.const_get(const_name) }
                        .select { |const| const.is_a?(Class) }
        new_exception = FormulaClassUnavailableError.new(name, path, class_name, class_list)
        raise new_exception, "", e.backtrace
      end
    end
  end
end
