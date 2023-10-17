const jwt = require("jsonwebtoken");
const db = require("../models/index");
require("dotenv").config();

const createJWT = (payload) => {
  let token = null;
  let key = process.env.JWT_SECRET;
  try {
    token = jwt.sign(payload, key);
  } catch (error) {
    console.log(error);
  }
  return token;
};

const verifyToken = (token) => {
  let decoded = null;
  let key = process.env.JWT_SECRET;
  let data = null;
  try {
    decoded = jwt.verify(token, key);
    data = decoded;
  } catch (error) {
    console.log(error);
  }
  return data;
};

const checkPermission = async (req, res, next) => {
  try {
    let cookie = req.cookies;
    let token = cookie.jwt;
    if (!token) {
      return res.json({
        success: false,
        message: "Vui lòng đăng nhập với Admin",
      });
    }
    let decoded = verifyToken(token);
    let idUser = decoded.id;
    let user = await db.User.findOne({
      where: { id: idUser },
      include: {
        model: db.Role,
      },
    });

    if (user.Role.name === "Admin" || user.Role.name === "SuperAdmin") {
      next();
      return res.json({
        success: true,
        message: "Bạn đang truy cập với quyền Admin",
      });
    } else {
      return res.json({
        success: false,
        message: "Bạn không có quyền truy cập Admin",
      });
    }
  } catch (error) {
    console.log(error);
  }
};

module.exports = {
  createJWT,
  verifyToken,
  checkPermission,
};
