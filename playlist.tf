resource "spotify_playlist" "playlist" {
  name = "Routine"
  tracks = ["6rFckZb1cuJYzsZiGHgqks"]
}

data "spotify_search_track" "karanaujla" {
  artist="Karan Aujla"
}



resource "spotify_playlist" "banger" {
    name = "Banger"

    tracks = [
        data.spotify_search_track.karanaujla.tracks[0].id,
        data.spotify_search_track.karanaujla.tracks[1].id,
        data.spotify_search_track.karanaujla.tracks[2].id,
        data.spotify_search_track.karanaujla.tracks[3].id,
        data.spotify_search_track.karanaujla.tracks[4].id
    ]
}
