const app = require("./app");

const port = process.env.PORT || 5000;

app.get("/", (req, res) => {
  res.status(200).json({
    data: {
      status: "success",
      message: "Hello World!",
    } 
  });
});

app.listen(port, () => {
  console.log(`Server listening on port: ${port}`);
});
