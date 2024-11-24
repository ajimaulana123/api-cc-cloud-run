const express = require("express");
const { getAllNews, checkNewsForHoax } = require("../controllers/newsController.js");

const router = express.Router();

router.get("/", getAllNews);

router.post("/predict", checkNewsForHoax);

module.exports = router;
