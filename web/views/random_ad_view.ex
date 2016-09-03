defmodule RandomAd.RandomAdView do
  use RandomAd.Web, :view



  def render(path) do
    :random.seed(:erlang.now)
    case File.ls(path) do
      {:ok, pages} ->
        shown_page = Enum.take_random(pages, 1)
        raw(File.read!("#{path}/#{shown_page}"))
      _ ->
        "images not found at #{path}"
    end
  end

end