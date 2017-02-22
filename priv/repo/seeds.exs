# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     BandIndigo.Repo.insert!(%SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

# clean database
BandIndigo.Repo.delete_all(BandIndigo.Track)
BandIndigo.Repo.delete_all(BandIndigo.Disk)

{:ok, d1_date} = Ecto.Date.cast("2009-01-11")
{:ok, d2_date} = Ecto.Date.cast("2012-01-11")

d1 = BandIndigo.Repo.insert!(%BandIndigo.Disk{name: "La Terre est bleue comme une orange",
                                              label: "Georgaphy Edge",
                                              year: d1_date,
                                              cover_name: "earth_2009.jpg",
                                              itunes_link: "https://itunes.apple.com/us/album/la-terre-est-bleue-comme-une/id1084128131",
                                              google_play_link: "https://play.google.com/store/music/album?id=Bsfr4sx5yhrzfvdfmpesolrl2ku&tid=song-Tu4pnmlx3xqu7ub6itsrg6x24zi&hl=en",
                                              amazon_link: "https://www.amazon.com/gp/product/B01BPW05YM"})
d2 = BandIndigo.Repo.insert!(%BandIndigo.Disk{name: "Bushido",
                                              label: "Georgaphy Edge",
                                              year: d2_date,
                                              cover_name: "bushido_2012.jpg",
                                              itunes_link: "https://itunes.apple.com/us/album/bushido/id1208009998",
                                              google_play_link: "https://play.google.com/store/music/album/Indigo_Bushido?id=B6db7rej2yum5wy26fptrj4dl3u&hl=en",
                                              amazon_link: "https://www.amazon.com/gp/product/B01BPTNEY8"})

tracks = [
  {"Kaleidoscope", "00:03:11", d1.id},
  {"White sun", "00:03:16", d1.id},
  {"Hello, Richie!", "00:03:06", d1.id},
  {"Fall remembers two of us", "00:03:12", d1.id},
  {"Edinburgh flowers", "00:04:22", d1.id},
  {"Cyborgs", "00:03:09", d1.id},
  {"Entropia", "00:03:11", d1.id},
  {"Samba", "00:03:52", d1.id},
  {"Purple funk", "00:03:38", d1.id},
  {"Holocaust", "00:02:40", d1.id},
  {"Rose of the winds", "00:04:26", d1.id},
  {"Milky way", "00:04:02", d1.id},
  {"Kenia", "00:04:48", d1.id},
  {"Margarita", "00:02:21", d1.id},
  {"Dirak's sea", "00:03:05", d1.id},
# ---
  {"Best day", "00:04:15", d2.id},
  {"Autlan De Navarro", "00:02:32", d2.id},
  {"Focus point", "00:02:58", d2.id},
  {"Bushido", "00:04:01", d2.id},
  {"Zarathustra", "00:02:45", d2.id},
  {"Gaia", "00:03:08", d2.id},
  {"Ashes of a rose", "00:03:24", d2.id},
  {"NNN", "00:03:05", d2.id},
  {"Machines age", "00:03:13", d2.id},
  {"Per aspera ad astra", "00:01:54", d2.id},
]


Enum.each(tracks, fn (x) -> BandIndigo.Repo.insert!(%BandIndigo.Track{name: elem(x, 0), duration: elem(Ecto.Time.cast(elem(x, 1)), 1), disk_id: elem(x, 2)})  end)
