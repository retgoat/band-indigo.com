defmodule BandIndigo.Repo.Migrations.AddOrderToTrack do
  use Ecto.Migration

  def change do
    alter table(:tracks) do
      add :order, :integer
    end
  end
end
