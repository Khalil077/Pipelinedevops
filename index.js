const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
    res.json({ message: "Bienvenue sur l'API statique !" });
});

app.get('/about', (req, res) => {
    res.json({ message: "À propos de l'API statique." });
});

app.listen(port, () => {
    console.log(`API statique en écoute sur http://localhost:${port}`);
});
