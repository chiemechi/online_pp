var roulette_a;
const List4 = ['好きな映画は', '好きな歌手', '特技', 'おすすめの買い物スポット', '職業は？', '経歴教えて', '座右の銘', 'どんな人と友達になりたい？', '自慢話して'];

// ルーレットを開始
function ivent() {
  const start = document.getElementById("ivent_a")
  start.addEventListener('click', function() {
    roulette = setInterval(function() {
      document.getElementById("ivent_a").disabled = true;
      var idx = List4[Math.floor( Math.random() * List4.length )];
      // ルーレット
      document.getElementById("roulette_c").innerHTML = idx;
      }, 100);
  })
}
  window.addEventListener('load',ivent)


  // ルーレットを停止
function ivents(){
  const stop = document.getElementById("ivent_b")
  stop.addEventListener('click', function() {
    document.getElementById("ivent_a").disabled = false;
    if(roulette) {
      clearInterval(roulette);
      }
  })
}
window.addEventListener('load',ivents)
