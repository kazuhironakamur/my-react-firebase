# Build container

```
cd <build dir>
docker build -t my-react-firebase .
```

# Create src/Firebase.js
for Example
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

# Run conatiner
```
docker run -it --rm -p 3000:3000 -v $(pwd)/public:/my-app/public -v $(pwd)/src:/my-app/src --name my-career my-react-firebase
```

