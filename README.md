# Build container

```
cd <build dir>
docker build -t my-react-firebase .
```

# Create Firebase initialize script
my-app/src/Firebase.js
```
// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIz...Jug",
  authDomain: "my-....firebaseapp.com",
  projectId: "my-...",
  storageBucket: "my-....appspot.com",
  messagingSenderId: "72...57",
  appId: "1:72...57:web:40...f0",
  measurementId: "G-B...2"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
/* eslint no-unused-vars: 0 */
const analytics = getAnalytics(app);
```

# Add settings for Firebase
my-app/ackage.json
```
  },
  "proxy": "http://localhost:3000"
}
```

# Setup your PUBLIC_URL
my-app/.env
```
PUBLIC_URL=https://<your public url>.web.app
```

# Setup your Firebase
my-app/firebase.json
```
{
  "hosting": {
    "public": "build",
    "ignore": [
      "firebase.json",
      "**/.*",
      "**/node_modules/**"
    ]
  }
}
```

# Run conatiner
```
docker run -it --rm -p 3000:3000 -p 9005:9005 -v $(pwd)/my-app:/my-app --name my-career my-react-firebase
```

# Use Firebase
```
docker exec -it my-career npx firebase login
docker exec -it my-career npm run build
docker exec -it my-career npx firebase deploy
```