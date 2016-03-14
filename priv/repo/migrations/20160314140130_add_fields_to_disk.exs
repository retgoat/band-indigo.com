defmodule BandIndigo.Repo.Migrations.AddFieldsToDisk do
  use Ecto.Migration

  def change do
    alter table(:disks) do
      add :itunes_link, :string
      add :google_play_link, :string
      add :amazon_link, :string
    end
  end
end
