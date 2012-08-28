


module SuperModulo
  def mi_funcion
    "SuperModulo#mi_funcion()..."
  end
  module_function :mi_funcion
end


class String
  include SuperModulo
  def llama_mi_metodo
    mi_funcion
  end
end

String.new.llama_mi_metodo
"".llama_mi_metodo
SuperModulo.mi_funcion

