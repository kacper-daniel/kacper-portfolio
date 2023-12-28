'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.json": "ff67e7ded15931270b177eb8fdc193de",
"assets/AssetManifest.smcbin": "16078c54e8329521c9672e376021c48f",
"assets/assets/images/avatar.png": "49a0db3a43418d7c9b06e9fd48dade75",
"assets/assets/images/background_one.jpg": "2d39f516d8bdc32606c06aeb87b34e04",
"assets/assets/images/background_two.jpg": "08d2fc472b83d1a4e2bdc7d81fd63837",
"assets/assets/images/github_icon.png": "cfd7c9a6668829ef29b1c9624a11559e",
"assets/assets/images/google_play_logo.png": "3ebbe779af0892ce12a8fb6083d372f2",
"assets/assets/images/handstand.jpg": "856c4fc05479c0f98cc9d61df85ab326",
"assets/assets/images/kacper_logo.png": "b31beb818b233bec4656fd9ab3cbfc31",
"assets/assets/images/kaggle_icon.png": "c3ea781ac01a47d578a1f1a065e79733",
"assets/assets/images/logo.jpg": "a34c7d4e2954e124244a0b16b36654b7",
"assets/assets/images/opolskie_logo.png": "d31a79e10aaaed89a72c8d6de9b463a7",
"assets/assets/images/project_1_view.png": "0fb758dcbffa028cdddd24e66f8ee304",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "1fb62fabb128ea22864916d3cd191807",
"assets/NOTICES": "471cd6628623cf31fa22a24839401dca",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/Running_deer.gif": "28a1a7442e39da9518251695b7cc61da",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"favicon.png": "7f5af6a5bbb46fcc0bca15f2f80b08dc",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/android-icon-144x144.png": "978c6e46501faa6683fcff36c2cfd293",
"icons/android-icon-192x192.png": "1e0d3f2ed0687b19f0954f7affedc23c",
"icons/android-icon-36x36.png": "33c62afb4bbec6484d3e28dc9adad116",
"icons/android-icon-48x48.png": "c8d7a01ffb3d4407a34b591c1f5afb20",
"icons/android-icon-72x72.png": "f05b343d34c3eaeca2b5c66afbd697f0",
"icons/android-icon-96x96.png": "229ee40d9dc2d5169c8b2112c377a458",
"icons/apple-icon-114x114.png": "9064064c858c2a1ade1f3b2de0d14260",
"icons/apple-icon-120x120.png": "2ea917bc19acf9fe492fcf51f58cc367",
"icons/apple-icon-144x144.png": "978c6e46501faa6683fcff36c2cfd293",
"icons/apple-icon-152x152.png": "67b4740885969c20641b90530b84e8ed",
"icons/apple-icon-180x180.png": "d48b40a49849781c1d4f32e5e0174df1",
"icons/apple-icon-57x57.png": "adf77aa7c48315e30bbb214ce998bae2",
"icons/apple-icon-60x60.png": "98ddea55f29a7ab03fac123d00e4acf4",
"icons/apple-icon-72x72.png": "f05b343d34c3eaeca2b5c66afbd697f0",
"icons/apple-icon-76x76.png": "6bf492fb6623962556235e30da6b3d0a",
"icons/apple-icon-precomposed.png": "5c204696eacb384318d64ce5c1fe912e",
"icons/apple-icon.png": "5c204696eacb384318d64ce5c1fe912e",
"icons/browserconfig.xml": "653d077300a12f09a69caeea7a8947f8",
"icons/favicon-16x16.png": "fc3969eeb5b9c3055d0656736dbbfd45",
"icons/favicon-32x32.png": "78d8d095b36fc3ea55dcac5888e30931",
"icons/favicon-96x96.png": "229ee40d9dc2d5169c8b2112c377a458",
"icons/favicon.ico": "b51822fcc1f61863089505042667b266",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/manifest.json": "b58fcfa7628c9205cb11a1b2c3e8f99a",
"icons/ms-icon-144x144.png": "978c6e46501faa6683fcff36c2cfd293",
"icons/ms-icon-150x150.png": "d8b97d95a33cc5b02f1028514c915a65",
"icons/ms-icon-310x310.png": "e2eb42773a3b7669e4f4258cb0577a23",
"icons/ms-icon-70x70.png": "1ba25da174479452053eedf1ac93dd68",
"index.html": "1e4910ff95fe7988d58e05bb47f3b1e6",
"/": "1e4910ff95fe7988d58e05bb47f3b1e6",
"main.dart.js": "f06655ef8adf2e2a5ecf78e03141ece7",
"manifest.json": "6c5e1fe693ae42e79cf4ff2d1f27c985",
"version.json": "009c9e65172e010890f7f65fde438006"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
