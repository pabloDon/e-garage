module OwnersHelper
  def get_index_header
    return "Resultado de búsqueda" if params[:search]
    return "Mis clientes"
  end
end
