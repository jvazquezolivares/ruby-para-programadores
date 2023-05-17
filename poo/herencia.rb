#Herencia

#Superclase
class Documento
  attr_accessor :created_at, :updated_at
  attr_accessor :nombre, :readonly

  def initialize(nombre: 'sin nombre', readonly: )
    @nombre     = nombre
    @readonly   = readonly
    @created_at = Time.now
    @updated_at = Time.now
    @autor = "Javier"
  end

  def guardar 
    puts "guardando..."
    @updated_at = Time.now
  end

  def nombre_documento
    nombre
  end

  def imprimir
    puts "Imprimiendo el documento"
  end

  protected
  def metodo_protegido
    puts "metodo protegido"
  end

  attr_accessor :autor
end

class DocumentoTexto < Documento
  attr_accessor :extension

  def initialize(...)
    super(...)
    @extension = '.txt'
  end

  def nombre_documento
    super + extension
  end

  def invocar_metodo
    metodo_protegido
  end

  def nombre_autor
    "El nombre del autor es: #{autor}"
  end
end

texto = DocumentoTexto.new(nombre: 'DocumentoTexto', readonly: true)
puts texto.nombre
puts texto.nombre_documento
texto.invocar_metodo
puts texto.nombre_autor




class DocumentoHTML < Documento
  attr_accessor :extension, :encode

  def initialize(encode: , **options)
    super(**options)
    @encode = encode
    @extension = '.html'
  end

  def procesar
    puts "procesando..."
  end

  def nombre_documento
    super + extension
  end

  def imprimir
    procesar
    super
  end
end

#html = DocumentoHTML.new(encode: 'utf-8',  nombre: 'hello_word', readonly: false)
#puts html.nombre
#puts html.nombre_documento
#html.imprimir
