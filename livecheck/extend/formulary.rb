require_relative "formula"

module Formulary
  class << self
    # extended to load the Livecheckable version of a formula

     def livecheckable_path(path)
       if (opt = path.realpath / "../../Livecheckables" / path.basename).exist?
         opt
       elsif (opt = Pathname(__dir__) / "../../Livecheckables" / path.basename).exist?
         opt
       end
     end

    def load_formula(name, path, contents, namespace)
      mod = Module.new
      const_set(namespace, mod)
      mod.module_eval(contents, path)

      lc_path = livecheckable_path(path)
      if File.exist?(lc_path)
        puts "Loading #{lc_path}" if ARGV.debug?
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
