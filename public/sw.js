console.log('log from sw in public folder');
const version = 1;
self.addEventListener('install', () => {
    console.log('sw v%s installed at ', version, new Date().toLocaleDateString());
    self.skipWaiting();
});
self.addEventListener('activate', () => {
    console.log('sw v%s activated at ', version, new Date().toLocaleDateString());
});
self.addEventListener('fetch', (event) => {
    if(!navigator.onLine) {
        event.respondWith(new Response('<h1>You are Offline :( </h1>', {
            headers: {
                'Content-Type' : 'text/html'
            }
        }));
    } else {
        console.log('url == ', event.request.url);
        event.respondWith(fetch(event.request));
    }
});