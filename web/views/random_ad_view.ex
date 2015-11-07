defmodule RandomAd.RandomAdView do
  use RandomAd.Web, :view

  def render("ad_tower.html", %{}) do
    if (Application.get_env(:pp_web, :live_ads)) do
      render("adsense_tower.html", %{})
    else
      tag(:img, src: "/images/tower_ad.jpg")
    end
  end

  def render("ad_block.html", %{}) do
    if (Application.get_env(:pp_web, :live_ads)) do
      render("adsense_block.html", %{})
    else
      tag(:img, src: "/images/block_ad.jpg")
    end
  end
end