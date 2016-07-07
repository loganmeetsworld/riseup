defmodule Riseup.ChannelController do
  use Riseup.Web, :controller

  alias Riseup.Channel

  plug :scrub_params, "channel" when action in [:create, :update]

  def index(conn, _params) do
    channels = Repo.all(Channel)
    render(conn, "index.json", channels: channels)
  end

  # def create(conn, %{"channel" => channel_params}) do
  #   changeset = Channel.changeset(%Channel{}, channel_params)

  #   case Repo.insert(changeset) do
  #     {:ok, channel} ->
  #       conn
  #       |> put_status(:created)
  #       |> render("show.json", channel: channel)
  #     {:error, changeset} ->
  #       conn
  #       |> put_status(:unprocessable_entity)
  #       |> render(Riseup.ChangesetView, "error.json", changeset: changeset)
  #   end
  # end
end