defmodule BandIndigo.Disk do
  use BandIndigo.Web, :model
  use Ecto.Schema

  schema "disks" do
    field :name,       :string
    field :year,       Ecto.Date
    field :label,      :string
    field :cover_name, :string
    has_many :tracks,  BandIndigo.Track

    timestamps
  end

  @required_fields ~w(name year label cover_name)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
