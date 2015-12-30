defmodule BandIndigo.Repo.Migrations.CreateDisk do
  use Ecto.Migration

  def change do
    create table(:disks) do
      add :name, :string
      add :year, :date
      add :label, :string
      add :cover_name, :string

      timestamps
    end

  end
end
