<!DOCTYPE html>
<html lang="en" class="">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">

    <title>Plagiarism Prevention 101: A Guide for College Students</title>

    <link type="text/css" rel="stylesheet" href="lib/icomoon.css">
    <script type="text/javascript" src="lib/player-0.0.11.min.js"></script>
    <script type="text/javascript" src="lib/lzwcompress.js"></script>

    <!-- Resize Hack -->
    <script type="text/javascript">
      window.resizeTo(screen.width, screen.height);
    </script>
    
    <!--[if lt IE 9]>
    <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <script id="__ENTRY__" type="application/json">
      {".js":["rise/13335b32.js"]}
    </script>

    <script id="__REMOTE_ENTRIES__" type="application/json">
      {"mondrian":{".js":["mondrian/entry.js"]}}
    </script>

    <script>
      (function() {
        const jsonp = {}

        function loadModule(manifest) {
          const p = []

          if (manifest['.css'] != null) {
            for (var idx = 0; idx < manifest['.css'].length; idx++) {
              p.push(new Promise((resolve, reject) => {
                var link = document.createElement('link')
                link.onload = resolve
                link.onerror = reject
                link.rel = 'stylesheet'
                link.href = 'lib/' + manifest['.css'][idx]
                document.body.appendChild(link)
              }))
            }
          }

          if (manifest['.js'] != null) {
            for (var idx = 0; idx < manifest['.js'].length; idx++) {
              p.push(new Promise((resolve, reject) => {
                var script = document.createElement('script')
                script.onload = resolve
                script.onerror = reject
                script.src = 'lib/' + manifest['.js'][idx]
                document.body.appendChild(script)
              }))
            }
          }

          return Promise.all(p)
        }

        function deserialize(str) {
          const buffer = Uint8Array.from(atob(str), c => c.charCodeAt(0))
          const json = new TextDecoder().decode(buffer)
          const result = JSON.parse(json)
          return result
        }

        function __loadEntry() {
          return loadModule(JSON.parse(document.getElementById('__ENTRY__').textContent))
        }

        function __loadRemoteEntry(name) {
          const manifest = JSON.parse(document.getElementById('__REMOTE_ENTRIES__').textContent)
          if (manifest[name] == null) throw new Error(`Missing manifest for remote entry "${name}".`)
          return loadModule(manifest[name])
        }
        
        async function __loadJsonp(id, path) {
          try {
            return await new Promise((resolve, reject) => {
              try {
                jsonp[id] = resolve
                const script = document.createElement('script')
                script.onerror = reject
                script.src = `./${path}`
                document.head.appendChild(script)
              } catch (err) {
                reject(err)
              }
            })
          } finally {
            delete jsonp[id]
          }
        }

        function __resolveJsonp(id, data) {
          const resolve = jsonp[id]
          if (typeof resolve !== 'function') {
            throw new Error(`Could not load JSONP "${id}"`)
          }
          resolve(data)
        }

        async function __fetchCourse(name) {
          name = name == null ? window.i18n.default : name
          if (!window.i18n.available.includes(name)) {
            console.warn(`Could not load locale "${name}"`)
            name = window.i18n.available[0]
          }
          const encoded = await __loadJsonp(`course:${name}`, `locales/${name}.js`)
          const courseData = deserialize(encoded)
          return courseData
        }

        window.__loadEntry = __loadEntry
        window.__loadRemoteEntry = __loadRemoteEntry
        window.__loadJsonp = __loadJsonp
        window.__resolveJsonp = __resolveJsonp
        window.__fetchCourse = __fetchCourse
      })()
    </script>
  </head>
  <body>
    <div id="app"></div>
    <script type="text/javascript">
  (function(root) {
    window.i18n = {"available":["und"],"default":"und"};
    window.partnerContent = [];

    function isExport() {
      return true;
    }

    function resolvePath(path) {
      return ('assets/').concat(path);
    }

    function resolveFontPath(font) {
      return ('lib/fonts/').concat(font.key.split('/').reverse()[0]);
    }

    function fetchAvailableLocales() {
      return window.i18n
    }

    root.Runtime = {
      fetch: window.__fetchCourse,
      fetchAvailableLocales: fetchAvailableLocales,
      isExport: isExport,
      resolvePath: resolvePath,
      resolveFontPath: resolveFontPath
    };
  }(window));
</script>

    
    <script>__loadEntry()</script>
    
  </body>
</html>
