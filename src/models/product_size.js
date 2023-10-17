"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Product_Size extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Product_Size.belongsTo(models.Product, { foreignKey: "ProductId" });
      Product_Size.belongsTo(models.Size, { foreignKey: "SizeId" });
    }
  }
  Product_Size.init(
    {
      ProductId: DataTypes.INTEGER,
      SizeId: DataTypes.INTEGER,
    },
    {
      sequelize,
      modelName: "Product_Size",
    }
  );
  return Product_Size;
};
