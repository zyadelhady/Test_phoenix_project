defmodule Discuss.Repo.Migrations.CreateTopic do
  use Ecto.Migration

  def change do
    create table(:topic) do
      add :title, :string
      timestamps(type: :utc_datetime)
    end
  end
end
