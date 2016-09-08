defmodule RandomAd.RandomAdView do
  use RandomAd.Web, :view



  def render_random do
    case Application.get_env(:random_ad, :ad_path) do
      {:ok, path} ->
        :random.seed(:os.timestamp)
        case File.ls(path) do
          {:ok, pages} ->
            shown_page = Enum.take_random(pages, 1)
            raw(File.read!("#{path}/#{shown_page}"))
          reason ->
            "images not found at #{path}, #{reason}"
        end
      _ ->     
        "path not set"
    end
  end

end