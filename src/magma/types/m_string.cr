module Magma
  class MString < MObject
    def call(method, args = [] of MObject : Array(MObject))
      case method
      when "to_s"
        self
      when "=~"
        regex = args.first.value as Regex
        result = value =~ regex
        mtype_wrap(result)
      else
        super
      end
    end
  end
end
