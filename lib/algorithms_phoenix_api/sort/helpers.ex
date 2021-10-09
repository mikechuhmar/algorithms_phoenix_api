defmodule Sort.Helpers do
  def compare_for_sort(val_1, val_2, sort_type) do
    case sort_type do
      :asc -> val_1 < val_2
      :desc -> val_2 < val_1
    end
  end
end
