defmodule RandomAd.RandomAdView do
  use RandomAd.Web, :view

  def render(path, %{}) do
    :random.seed(:erlang.now)
    {:ok, pages} = File.ls(path)
    shown_page = Enum.take_random(pages, 1)
    raw(File.read!("#{path}/#{shown_page}"))
  end

end