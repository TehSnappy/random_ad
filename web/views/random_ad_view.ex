defmodule RandomAd.RandomAdView do
  use RandomAd.Web, :view



  def render_random do
    path = Application.get_env(:random_ad, :ad_path)
    if (not is_nil(path)) do
      :random.seed(:os.timestamp)
      case File.ls(path) do
        {:ok, pages} ->
          shown_page = Enum.take_random(pages, 1)
          raw(File.read!("#{path}/#{shown_page}"))
        _ ->
          "images not found at #{path}"
      end
    else
      "path not set"
    end
  end

end