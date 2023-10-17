const express = require("express");
const router = express.Router();
const authController = require("../controllers/authController");
const productController = require("../controllers/productController");
const checkMiddleware = require("../middleware/JWT");

router.post("/register", authController.register);
router.post("/login", authController.login);
router.get("/logout", authController.logout);

router.post("/admin/login", authController.login);
router.get("/admin/logout", authController.logout);
router.get("/admin", checkMiddleware.checkPermission);

router.post("/products/store", productController.storeProduct);
router.put("/products/update/:id", productController.updateProduct);
router.delete("/products/delete/:id", productController.deleteProduct);
router.get("/products/page=:page", productController.indexProduct);
router.get("/products/:id", productController.showProduct);

module.exports = router;
