const paginationButtons = document.querySelectorAll('.pagination');
for (let i = 0; i < paginationButtons.length; i++) {
  const button = paginationButtons[i];
  button.addEventListener('click', async function () {
    const page = button.getAttribute('data-page');
    const users = await fetchUsers(page);
    renderUsers(users);
  });
}

async function fetchUsers(page) {
  const response = await fetch(`https://reqres.in/api/users?page=${page}`);
  const respData = await response.json();
  return respData.data;
}

function renderUsers(users) {
  let content = '';

  for (let i = 0; i < users.length; i++) {
    const user = users[i];
    content += `
      <div>
        <img src="${user.avatar}" class="userImage">
        <p>${user.first_name} ${user.last_name}</p>
      </div>
    `;
  }

  document.querySelector('#app').innerHTML = content;
}
