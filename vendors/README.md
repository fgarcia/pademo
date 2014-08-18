# Gemified apps 

The central gem here is **padrino-base** because it provides all the common
code, configuration, authentication, assets... 

Each gemified app is independent in the sense that they can be mounted for
their own testing. However the **mount** part is always done under the same
prefix as the whole application and the **root** path '/' is reserved for the
**base** gem. Mostly because it must provide common assets and routes like the
ones for authentication.

