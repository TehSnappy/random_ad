defmodule RandomAd.RandomAdView do
  use RandomAd.Web, :view



  def render_random do
    path = Application.get_env(:random_ad, :ad_path)
    if (path) do
      :random.seed(:erlang.now)
      case File.ls(path) do
        {:ok, pages} ->
          shown_page = Enum.take_random(pages, 1)
          raw(File.read!("#{path}/#{shown_page}"))
        _ ->
          "images not found at #{path}"
      end
    else
    end
  end

end