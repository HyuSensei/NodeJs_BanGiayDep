const db = require("../models/index");

const storeProduct = async (req, res) => {
  try {
    if (
      req.body.name == "" ||
      req.body.image == "" ||
      req.body.price == "" ||
      req.body.description == "" ||
      req.body.quantity == "" ||
      req.body.SizeId == "" ||
      req.body.CategoryId == ""
    ) {
      return res.json({
        success: false,
        message: "Vui lòng thêm đầy đủ thông tin sản phẩm",
      });
    } else {
      let name = req.body.name;
      let price = req.body.price;
      let image = req.body.image;
      let description = req.body.description;
      let quantity = req.body.quantity;
      let SizeId = req.body.SizeId;
      let CategoryId = req.body.CategoryId;
      let product = await db.Product.create({
        name: name,
        image: image,
        price: price,
        description: description,
        quantity: quantity,
        CategoryId: CategoryId,
      });
      if (product) {
        let product_size = await db.Product_Size.create({
          ProductId: product.id,
          SizeId: SizeId,
        });
        return res.json({
          success: true,
          message: "Thêm sản phẩm thành công",
          product: product,
          product_size: product_size,
        });
      }
    }
  } catch (error) {
    console.log(error);
  }
};

const indexProduct = async (req, res) => {
  try {
    const page = req.params.page;
    if (page <= 0) {
      return res.json({
        success: false,
        message: `Không tìm thấy sản phẩm`,
      });
    }
    const product_page = 2;

    let { count, rows } = await db.Product.findAndCountAll({
      offset: (page - 1) * product_page,
      limit: product_page,
      include: [
        {
          model: db.Size,
          attributes: ["name"],
        },
      ],
    });
    const totalPages = Math.ceil(count / product_page);
    if (page == "" || page > totalPages) {
      return res.json({
        success: false,
        message: `Không tìm thấy sản phẩm`,
      });
    }
    return res.json({
      success: true,
      product: rows,
      countPage: totalPages,
    });
  } catch (error) {
    console.log(error);
  }
};

const updateProduct = async (req, res) => {
  try {
    let id = req.params.id;
    let name = req.body.name;
    let price = req.body.price;
    let image = req.body.image;
    let quantity = req.body.quantity;
    let description = req.body.description;
    let CategoryId = req.body.CategoryId;
    let SizeId = req.body.SizeId;
    let getproduct = await db.Product.findOne({ where: { id: id } });
    if (!getproduct) {
      return res.json({
        success: false,
        message: "Không tìm thấy sản phẩm cần sửa !",
      });
    } else {
      await db.Product.update(
        {
          name: name,
          image: image,
          price: price,
          description: description,
          quantity: quantity,
          CategoryId: CategoryId,
        },
        { where: { id: id } }
      );
      await db.Product_Size.update(
        {
          SizeId: SizeId,
        },
        { where: { ProductId: id } }
      );
      return res.json({
        success: true,
        message: "Sửa sản phẩm thành công !",
      });
    }
  } catch (error) {
    console.log(error);
  }
};

const deleteProduct = async (req, res) => {
  try {
    let id = req.params.id;
    let getproduct = await db.Product.findOne({ where: { id: id } });
    if (!getproduct) {
      return res.json({
        success: false,
        message: "Không tìm thấy sản phẩm cần xóa !",
      });
    } else {
      await db.Product_Size.destroy({
        where: {
          ProductId: id,
        },
      });
      await db.Product.destroy({
        where: {
          id: id,
        },
      });
      return res.json({
        success: true,
        message: "Xóa sản phẩm thành công!",
      });
    }
  } catch (error) {
    console.log(error);
  }
};

const showProduct = async (req, res) => {
  try {
    let id = req.params.id;
    let product = await db.Product.findOne({
      include: [
        {
          model: db.Size,
          attributes: ["name"],
          required: true,
        },
      ],
      where: { id: id },
    });
    if (!product) {
      return res.json({
        success: false,
        message: `Không có sản phẩm id= ${id}!`,
      });
    }
    return res.json({
      success: true,
      message: "Chi tiết sản phẩm",
      product: product,
    });
  } catch (error) {
    console.log(error);
  }
};

module.exports = {
  storeProduct,
  updateProduct,
  deleteProduct,
  showProduct,
  indexProduct,
};
