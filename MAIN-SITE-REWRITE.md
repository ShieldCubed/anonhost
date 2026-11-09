# Serve AnonHost at stoxswap.com/anonhost

Do this in the MAIN stoxswap.com project (its own repo/folder). Only /anonhost is touched; everything else keeps working.

Add to its `vercel.json` (put these FIRST if you already have a "rewrites" array):

```json
{
  "rewrites": [
    { "source": "/anonhost", "destination": "https://YOUR-ANONHOST-PROJECT.vercel.app/anonhost" },
    { "source": "/anonhost/:path*", "destination": "https://YOUR-ANONHOST-PROJECT.vercel.app/anonhost/:path*" }
  ]
}
```

Replace `YOUR-ANONHOST-PROJECT.vercel.app` with the URL `npx vercel --prod` prints for the AnonHost project.
Then redeploy the main site (`git push` or `npx vercel --prod` there).
