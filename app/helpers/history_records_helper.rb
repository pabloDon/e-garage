module HistoryRecordsHelper
  def posibles_estados
    Entry.estados_posibles
  end
end
