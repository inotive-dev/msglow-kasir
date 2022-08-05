import 'package:flutter/material.dart';

import '../../../../../core/constants/strings.dart';
import '../../../../../core/style/color_palettes.dart';
import '../../../../../core/style/sizes.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/my_text.dart';
import '../../../../../domain/entities/transaction/order.dart';

class OrderInfo extends StatelessWidget {
  final Order order;

  const OrderInfo({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildOrderProduct(context),
        _buildOrderPackage(),
        _buildCustomOrder(context),
        SizedBox(height: Sizes.height30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cash Payment
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MyText(
                    text: Strings.labelCashPayment,
                    fontSize: Sizes.sp18,
                    fontWeight: FontWeight.w500,
                    color: ColorPalettes.grey75,
                  ),
                  MyText(
                    text: formatToIdr(int.parse(order.cashAmount ?? '0')),
                    fontSize: Sizes.sp24,
                    fontWeight: FontWeight.w500,
                    color: ColorPalettes.grey75,
                  ),
                ],
              ),
            ),
            // Total payment
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MyText(
                    text: Strings.labelPaymentTotal,
                    fontSize: Sizes.sp18,
                    fontWeight: FontWeight.w500,
                    color: ColorPalettes.grey75,
                  ),
                  MyText(
                    text: formatToIdr(int.parse(order.productCost ?? '0')),
                    fontSize: Sizes.sp24,
                    fontWeight: FontWeight.w500,
                    color: ColorPalettes.grey75,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCustomOrder(BuildContext context) {
    if (order.isOrderCustomExist) {
      return Padding(
        padding: EdgeInsets.only(
          top: Sizes.height30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product name
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MyText(
                    text: Strings.labelCustomProduct,
                    fontSize: Sizes.sp18,
                    fontWeight: FontWeight.w500,
                    color: ColorPalettes.grey75,
                  ),
                  MyText(
                    text:
                        '${order.orderCustoms?.map((e) => e.product).join(', ')}',
                    fontSize: Sizes.sp24,
                    fontWeight: FontWeight.w500,
                    color: ColorPalettes.grey75,
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            ),
            // Total Quantity
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MyText(
                    text: Strings.labelQuantity,
                    fontSize: Sizes.sp18,
                    fontWeight: FontWeight.w500,
                    color: ColorPalettes.grey75,
                  ),
                  MyText(
                    text: '${order.totalQuantityCustomOrders}',
                    fontSize: Sizes.sp24,
                    fontWeight: FontWeight.w500,
                    color: ColorPalettes.grey75,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  _buildOrderProduct(BuildContext context) {
    if (order.isOrderProductExist) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product name
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                MyText(
                  text: Strings.labelProductName,
                  fontSize: Sizes.sp18,
                  fontWeight: FontWeight.w500,
                  color: ColorPalettes.grey75,
                ),
                MyText(
                  text:
                      '${order.orderProducts?.map((e) => e.product?.name).join(', ')}',
                  fontSize: Sizes.sp24,
                  fontWeight: FontWeight.w500,
                  color: ColorPalettes.grey75,
                  textAlign: TextAlign.end,
                ),
                MyText(
                  text:
                  'Catatan',
                  fontSize: Sizes.sp18,
                  fontWeight: FontWeight.w500,
                  color: ColorPalettes.grey75,
                ),
              ],
            ),
          ),
          // Total Quantity
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                MyText(
                  text: Strings.labelQuantity,
                  fontSize: Sizes.sp18,
                  fontWeight: FontWeight.w500,
                  color: ColorPalettes.grey75,
                ),
                MyText(
                  text: '${order.totalQuantity}',
                  fontSize: Sizes.sp24,
                  fontWeight: FontWeight.w500,
                  color: ColorPalettes.grey75,
                ),
                MyText(
                  text: order.orderProducts!.isNotEmpty ? order.orderProducts![0].note ?? '-' : '-',
                  fontSize: Sizes.sp18,
                  fontWeight: FontWeight.w500,
                  color: ColorPalettes.grey75,
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _buildOrderPackage() {
    if (order.orderPackages?.isNotEmpty != true) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: Sizes.height30),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(Strings.namaPackage),
                Text(
                    "${order.orderPackages?.map((e) => e.package.name).join(",")}"),
              ],
            )),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(Strings.labelQuantity),
                Text(order.orderPackages
                        ?.fold<int>(0, (v, element) => v + (element.quantity))
                        .toString() ??
                    ""),
              ],
            )),
          ],
        )
      ],
    );
  }
}
