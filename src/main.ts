import express from "express";

const app = express();
app.use(express.json());

const PORT = Number(process.env.PORT) || 3000;

app.get("/", (req, res) => {
    res.send("Hello world");
});

app.listen(PORT, () => {
    console.log(`Listening on port ${PORT}`);
});