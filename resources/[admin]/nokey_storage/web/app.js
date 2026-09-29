const app = document.getElementById('app');
const locationName = document.getElementById('locationName');
const pageTitle = document.getElementById('pageTitle');
const adminTab = document.getElementById('adminTab');
const navButtons = [...document.querySelectorAll('.nav-button')];
const pages = {
  open: document.getElementById('openPage'),
  create: document.getElementById('createPage'),
};
const toast = document.getElementById('toast');

let isAdmin = false;
let toastTimer;

const resourceName = typeof GetParentResourceName === 'function'
  ? GetParentResourceName()
  : 'nokey_storage';

function post(endpoint, data = {}) {
  return fetch(`https://${resourceName}/${endpoint}`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json; charset=UTF-8' },
    body: JSON.stringify(data),
  }).then((response) => response.json());
}

function showToast(message, type = 'success') {
  clearTimeout(toastTimer);
  toast.textContent = message || 'Done.';
  toast.className = `toast visible ${type}`;
  toastTimer = setTimeout(() => {
    toast.className = 'toast';
  }, 4200);
}

function setPage(name) {
  if (name === 'create' && !isAdmin) name = 'open';

  navButtons.forEach((button) => {
    button.classList.toggle('active', button.dataset.page === name);
  });

  Object.entries(pages).forEach(([key, page]) => {
    page.classList.toggle('active', key === name);
  });

  pageTitle.textContent = name === 'create'
    ? 'Provision a secure locker'
    : 'Open your storage locker';
}

function digitsOnly(input) {
  input.addEventListener('input', () => {
    input.value = input.value.replace(/\D/g, '');
  });
}

[
  document.getElementById('openBoxNumber'),
  document.getElementById('openPin'),
  document.getElementById('createBoxNumber'),
  document.getElementById('createPin'),
].forEach(digitsOnly);

navButtons.forEach((button) => {
  button.addEventListener('click', () => setPage(button.dataset.page));
});

document.getElementById('closeButton').addEventListener('click', () => post('close'));

document.addEventListener('keydown', (event) => {
  if (event.key === 'Escape' && !app.classList.contains('hidden')) {
    post('close');
  }
});

document.getElementById('openForm').addEventListener('submit', async (event) => {
  event.preventDefault();

  const button = document.getElementById('openSubmit');
  button.disabled = true;

  try {
    const result = await post('openLocker', {
      boxNumber: document.getElementById('openBoxNumber').value,
      pin: document.getElementById('openPin').value,
    });

    if (!result?.success) {
      showToast(result?.message || 'Locker access denied.', 'error');
      document.getElementById('openPin').value = '';
    }
  } catch (_) {
    showToast('Storage network unavailable.', 'error');
  } finally {
    button.disabled = false;
  }
});

document.getElementById('createForm').addEventListener('submit', async (event) => {
  event.preventDefault();
  if (!isAdmin) return;

  const button = document.getElementById('createSubmit');
  button.disabled = true;

  try {
    const result = await post('createLocker', {
      boxNumber: document.getElementById('createBoxNumber').value,
      pin: document.getElementById('createPin').value,
      label: document.getElementById('createLabel').value,
      slots: Number(document.getElementById('createSlots').value),
      weightKg: Number(document.getElementById('createWeight').value),
    });

    if (result?.success) {
      showToast(result.message || 'Locker created.', 'success');
      document.getElementById('createBoxNumber').value = '';
      document.getElementById('createPin').value = '';
      document.getElementById('createLabel').value = '';
    } else {
      showToast(result?.message || 'Locker could not be created.', 'error');
    }
  } catch (_) {
    showToast('Storage network unavailable.', 'error');
  } finally {
    button.disabled = false;
  }
});

window.addEventListener('message', (event) => {
  const data = event.data || {};

  if (data.action === 'open') {
    isAdmin = data.admin === true;
    adminTab.classList.toggle('hidden', !isAdmin);
    locationName.textContent = data.location || 'NoKey Storage';
    setPage('open');
    app.classList.remove('hidden');
    app.setAttribute('aria-hidden', 'false');
    setTimeout(() => document.getElementById('openBoxNumber').focus(), 60);
  }

  if (data.action === 'close') {
    app.classList.add('hidden');
    app.setAttribute('aria-hidden', 'true');
    document.getElementById('openPin').value = '';
    toast.className = 'toast';
  }
});
