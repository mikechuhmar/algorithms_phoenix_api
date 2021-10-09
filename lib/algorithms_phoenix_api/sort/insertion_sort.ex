defmodule InsertionSort do

  def sort(list, sort_type \\ :asc)
  def sort([], _), do: []
  def sort([h], _), do: [h]
  def sort(list, sort_type), do: do_sort(list, sort_type, [])

  defp do_sort([], _, sorted_list), do: sorted_list

  defp do_sort([h | t], sort_type, sorted_list) do
    do_sort(t, sort_type, insert(h, sorted_list, sort_type))
  end

  defp insert(e, [], _), do: [e]

  defp insert(e, [h | t], sort_type) do
    if Sort.Helpers.compare_for_sort(e, h, sort_type),
      do: [e, h | t],
      else: [h | insert(e, t, sort_type)]
  end
end
