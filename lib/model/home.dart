class HomeModel {
  static const features = {
    'inbound': 'INBOUND',
    'inventory': 'INVENTORY',
    'stockOut': 'STOCK_OUT',
    'changeWarehouse': 'STOCK_MOVE',
    'tizong': 'GATHER_PICK',
    'tally': 'TALLY',
    'palletInbound': 'WHOLE_STOCK_IN',
    'palletOutbound': 'WHOLE_STOCK_OUT',
    'boxOutbound': 'WHOLE_BOX_OUT',
  };

  static const featureImgMap = {
    'inbound': 'ruku',
    'inventory': 'pandian',
    'stockOut': 'chuku',
    'changeWarehouse': 'yiku',
    'tizong': 'tizong',
    'tally': 'lihuo',
    'palletInbound': 'zhengtuoruku',
    'palletOutbound': 'zhengtuochuku',
    'boxOutbound': 'zhengxiangchuku',
  };
  static const featureNameMap = {
    'inbound': '入库',
    'inventory': '盘点',
    'stockOut': '出库',
    'changeWarehouse': '移库',
    'tizong': '提总',
    'tally': '理货',
    'palletInbound': '整托入库',
    'palletOutbound': '整托出库',
    'boxOutbound': '整箱出库',
  };

  static const featureRoutes = {
    'inbound': '/inbound',
//    'inventory': '/inventory',
//    'stockOut': '/stockOut',
//    'changeWarehouse': '/changeWarehouse',
//    'tizong': '/tizong',
//    'tally': '/tally',
//    'palletInbound': '/palletInbound',
//    'palletOutbound': '/palletOutbound',
//    'boxOutbound': '/boxOutbound',
  };
}
