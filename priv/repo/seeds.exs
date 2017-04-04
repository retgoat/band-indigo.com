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

d1 = BandIndigo.Repo.insert!(%BandIndigo.Disk{name: "La Terre est bleue comme une orange",
                                              label: "Georgaphy Edge",
                                              year: Ecto.Date.cast!("2009-01-11"),
                                              cover_name: "earth_2009.jpg",
                                              itunes_link: "https://itunes.apple.com/us/album/la-terre-est-bleue-comme-une-orange/id1208303564",
                                              google_play_link: "https://play.google.com/store/music/album?id=Bsfr4sx5yhrzfvdfmpesolrl2ku&tid=song-T2l4vtknlqq7rirr22tngrpcnpu",
                                              amazon_link: "https://www.amazon.com/gp/product/B01BPW05YM"})

d2 = BandIndigo.Repo.insert!(%BandIndigo.Disk{name: "Bushido",
                                              label: "Georgaphy Edge",
                                              year: Ecto.Date.cast!("2012-01-11"),
                                              cover_name: "bushido_2012.jpg",
                                              itunes_link: "https://itunes.apple.com/us/album/bushido/id1208009998",
                                              google_play_link: "https://play.google.com/store/music/album?id=B6db7rej2yum5wy26fptrj4dl3u&tid=song-Talnrfa4kkdsn6pkwaf6nm6q7oe",
                                              amazon_link: "https://www.amazon.com/gp/product/B01BPTNEY8"})

d3 = BandIndigo.Repo.insert!(%BandIndigo.Disk{name: "Chain Reaction",
                                              label: "Georgaphy Edge",
                                              year: Ecto.Date.cast!("2017-03-26"),
                                              cover_name: "chain_2017.jpg",
                                              itunes_link: "https://itunes.apple.com/ru/album/chain-reaction/id1220467986?l=en",
                                              google_play_link: "https://play.google.com/store/music/album?id=Bzcj5qo6bakwzmyqsremohexe7m&hl=en",
                                              amazon_link: "https://www.amazon.com/gp/product/B01BPTNEY8"})

tracks = [
  {"Kaleidoscope", "00:03:11", d1.id, 1},
  {"White sun", "00:03:16", d1.id, 2},
  {"Hello, Richie!", "00:03:06", d1.id, 3},
  {"Fall remembers two of us", "00:03:12", d1.id, 4},
  {"Edinburgh flowers", "00:04:22", d1.id, 5},
  {"Cyborgs", "00:03:09", d1.id, 6},
  {"Entropia", "00:03:11", d1.id, 7},
  {"Samba", "00:03:52", d1.id, 8},
  {"Purple funk", "00:03:38", d1.id, 9},
  {"Holocaust", "00:02:40", d1.id, 10},
  {"Rose of the winds", "00:04:26", d1.id, 11},
  {"Milky way", "00:04:02", d1.id, 12},
  {"Kenia", "00:04:48", d1.id, 13},
  {"Margarita", "00:02:21", d1.id, 14},
  {"Dirak's sea", "00:03:05", d1.id, 15},
# ---
  {"Best day", "00:04:15", d2.id, 1},
  {"Autlan De Navarro", "00:02:32", d2.id, 2},
  {"Focus point", "00:02:58", d2.id, 3},
  {"Bushido", "00:04:01", d2.id, 4},
  {"Zarathustra", "00:02:45", d2.id, 5},
  {"Gaia", "00:03:08", d2.id, 6},
  {"Ashes of a rose", "00:03:24", d2.id, 7},
  {"NNN", "00:03:05", d2.id, 8},
  {"Machines age", "00:03:13", d2.id, 9},
  {"Per aspera ad astra", "00:01:54", d2.id, 10},
#  ---
  {"Genom", "00:02:09", d3.id, 1},
  {"Golfstream", "00:04:30", d3.id, 2},
  {"Long road to august", "00:04:30", d3.id, 3},
  {"Svetom", "00:02:16", d3.id, 4},
  {"Melkhior", "00:03:55", d3.id, 5},
  {"Kaspar", "00:02:54", d3.id, 6},
  {"Balthazar", "00:03:31", d3.id, 7},
  {"Chain reaction", "00:03:46", d3.id, 8},
  {"Across the universe", "00:03:05", d3.id, 9}
]


Enum.each(tracks, fn (x) -> BandIndigo.Repo.insert!(%BandIndigo.Track{name: elem(x, 0), duration: elem(Ecto.Time.cast(elem(x, 1)), 1), disk_id: elem(x, 2), order: elem(x, 3)})  end)
