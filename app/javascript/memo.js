function memo() {
  const addTodoButton = document.querySelector('#add-button');
  addTodoButton.addEventListener('click', () => {
    const input = document.querySelector('#new-todo');
    const text = input.value;
    input.value = '';

    const newLi = document.createElement('li');
    newLi.innerText = text;
    const newButton = document.createElement('button');
    newButton.innerText = 'done';
    newLi.appendChild(newButton);
    newButton.addEventListener('click', () => {
      const li = newButton.closest('li');
      li.classList.add('done');
    });
    const ul =document.getElementById('memos');
    ul.appendChild(newLi);
  });
  }
    window.addEventListener('load',memo)



  