function createSong(name) {
  var newSong = { title: title };
  var artistId = aritst.id

  $.ajax({
    type: "POST",
    url: "/artist/id.json",
    data: JSON.stringify({
    song: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    console.log(data);
}
