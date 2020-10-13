// オンライン飲み会ルーレット

    window.onload = function() {
    const addNameButton = document.getElementById('add-button')
    addNameButton.addEventListener('click', () => {
    const input = document.getElementById('add-name');
    const li =document.createElement('li');
    li.innerText = input.value;
    const ul =document.querySelector('ul');
    ul.appendChild(li);
    
    });
    }
    


      const num_1 = [];
      function talker2() {
      talker_roulette = setInterval(function() {
      var idx = Math.floor( Math.random() * num_1.length );
      document.getElementById("talker_roulette").innerHTML = num_1[idx];
        }, 100);
        }
     window.addEventListener("load", talker2);

      function talker2_2() {
        if(talker_roulette) {
          clearInterval(talker_roulette);
        }
      }      


