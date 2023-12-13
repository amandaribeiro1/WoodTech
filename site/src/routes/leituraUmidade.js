var express = require("express");
var router = express.Router();

var medidaController = require("../controllers/leituraUmidadeController");

router.get("/ultimas/:idFabrica", function (req, res) {
    medidaController.buscarUltimasMedidas(req, res);
});

router.get("/tempo-real/:idFabrica", function (req, res) {
    medidaController.buscarMedidasEmTempoReal(req, res);
})

module.exports = router;