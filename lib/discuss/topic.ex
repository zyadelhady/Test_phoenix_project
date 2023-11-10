defmodule Discuss.Topic do
  use Ecto.Schema
  import Ecto.Changeset

  schema "topic" do
    field :tile, :string
    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(topic, attrs \\ %{}) do
    topic
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
