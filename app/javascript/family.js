var roulette_b;
const List3 = ['自分の家族の良いところ', '家族への日頃の感謝', '最近あった嬉しい一言', '家族への不満は？', '家族旅行で行ってみたいところ', '最近の恋愛事情は？', '家族の一番の思い出は', '家族でやってみたいこと', '近況報告'];

// ルーレットを開始
function family() {
  const start = document.getElementById("family_a")
  start.addEventListener('click', function() {
    roulette = setInterval(function() {
      document.getElementById("family_a").disabled = true;
      var idx = List3[Math.floor( Math.random() * List3.length )];
      // ルーレット
      document.getElementById("roulette_b").innerHTML = idx;
      }, 100);
  })
}
  window.addEventListener('load',family)


  // ルーレットを停止
function familys (){
  const stop = document.getElementById("family_b")
  stop.addEventListener('click', function() {
    document.getElementById("family_a").disabled = false;
    if(roulette) {
      clearInterval(roulette);
      }
  })
}
window.addEventListener('load',familys)
