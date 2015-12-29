defmodule BandIndigo.Repo.Migrations.CreateTrack do
  use Ecto.Migration

  def change do
    create table(:tracks) do
      add :name, :string
      add :duration, :time
      add :disk_id, references(:disks)
      timestamps
    end

  end
end
