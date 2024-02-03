import 'dart:io';

import 'Menu.dart';
import 'Product.dart';
List<Product> productList = [];
void main(){
  Menu.menuList();
  String? input = stdin.readLineSync();
  if(input != null){
    switch(input){
      case '1':
        {
          print('نام محصول را وارد کنید\n0-انصراف');
          String? input1 = stdin.readLineSync();
          while (input1 == '') {
            print('نام محصول را درست وارد کنید\n0-انصراف');
            input1 = stdin.readLineSync();
          }
            switch (input1!) {
              case '0':
                {
                  main();
                }
              default:
                {
                for(int i= 0; i<productList.length;i++) {
                  if (productList[i].name == input1) {
                    print('محصول قبلا وارد شده است');
                    main();
                  }
                }
                String name = input1;
                  print('قیمت محصول را وارد کنید\n0-انصراف');
                  String? input11 = stdin.readLineSync();
                  while (input11 == ''|| int.tryParse(input11!) == null ) {
                    print('قیمت محصول را درست وارد کنید\n0-انصراف');
                    input11 = stdin.readLineSync();
                  }
                  switch (input11) {
                    case '0':
                      {
                        main();
                      }
                    default :
                      {
                        int price = int.parse(input11).abs();
                        print('تعداد محصول را وارد کنید\n0-انصراف');
                        String? input111 = stdin.readLineSync();
                        while (input111 == '' ||
                            int.tryParse(input111!) == null) {
                          print('تعداد محصول را درست وارد کنید\n0-انصراف');
                          input111 = stdin.readLineSync();
                        }
                        switch (input111) {
                          case '0':
                            {
                              main();
                            }
                          default:
                            {
                              int number = int.parse(input111).abs();
                              Product newProduct = Product(
                                  name: name, price: price, number: number);
                              productList.add(newProduct);
                              print('محصول با موفقیت ثبت شد');
                              main();
                            }
                        }
                      }
                  }
                }
            }
        }
      case '2':
        {
          for(int i = 0; i < productList.length; i++){
            print('${i+1}-${productList[i].name}  ${productList[i].price}\$   Teedad: ${productList[i].number}');
          }
          main();
        }
      case '3':
        {
          for (int i = 0; i < productList.length; i++) {
            print('${i + 1}-${productList[i].name}  ${productList[i]
                .price}\$   Teedad: ${productList[i].number}');
          }
          print('${productList.length + 1}-انصراف');
          String? input3 = stdin.readLineSync();
          while (input3 == '' || int.tryParse(input3!) == null) {
            print('لطفا عدد مورد نظر را درست وارد کنید');
            input3 = stdin.readLineSync();
          }
          int input3Int = int.parse(input3);
          while (input3Int < 1 || input3Int > (productList.length + 1)) {
            print('لطفا عدد مورد نظر را درست وارد کنید');
            input3 = stdin.readLineSync();
            while (input3 == '' || int.tryParse(input3!) == null) {
              print('لطفا عدد مورد نظر را درست وارد کنید');
              input3 = stdin.readLineSync();
            }
            input3Int = int.parse(input3);
          }

          if (input3Int == (productList.length + 1)) {
            main();
          }
          else {
            print('با موفقیت حذف شد ${productList[input3Int - 1].name} محصول');
            productList.removeAt(input3Int - 1);
          }
        }
      case '4':
        {
          if (productList.length == 0) {
            print('هیچ محصولی ثبت نشده');
            main();
          }
          else {
            print('لطفا شماره محصول مورد نظر را انتخاب کنید و در صورت انصراف عدد${productList.length + 1} را وارد کنید ');
            for (int i = 0; i < productList.length; i++) {
              print('${i + 1}-${productList[i].name}  ${productList[i]
                  .price}\$   Teedad: ${productList[i].number}');
            }
            print('${productList.length + 1}-انصراف');
            String? input4 = stdin.readLineSync();
            while(input4 == '' || int.tryParse(input4!) == null){
              print('لطفا عدد مورد نظر را درست وارد کنید');
              input4 = stdin.readLineSync();
             }
            int input4Int = int.parse(input4);
            while (input4Int < 1 || input4Int > (productList.length + 1)) {
              print('لطفا عدد مورد نظر را درست وارد کنید');
              input4 = stdin.readLineSync();
              while (input4 == '' || int.tryParse(input4!) == null) {
                print('لطفا عدد مورد نظر را درست وارد کنید');
                input4 = stdin.readLineSync();
              }
              input4Int = int.parse(input4).abs();
            }
            if (input4Int == productList.length + 1) {
              main();
            }
            else {
              print('نام جدید محصول را وارد کنید\n0-انصراف');
              String? input41 = stdin.readLineSync();
              while (input41 == '') {
                print('نام جدید محصول را وارد کنید\n0-انصراف');
                input41 = stdin.readLineSync();
              }
              switch (input41!) {
                case '0':
                  {
                    main();
                  }
                default:
                  {
                    productList[input4Int - 1].name = input41;
                    print('قیمت جدید محصول را وارد کنید\n0-انصراف');
                    String? input42 = stdin.readLineSync();
                    while (input42 == '' || int.tryParse(input42!) == null) {
                      print('قیمت جدید محصول را درست وارد کنید\n0-انصراف');
                      input42 = stdin.readLineSync();
                    }
                    switch (input42) {
                      case '0':
                        {
                          main();
                        }
                      default :
                        {
                          productList[input4Int - 1].price = int.parse(input42);
                          print('تعداد جدید محصول را وارد کنید\n0-انصراف');
                          String? input43 = stdin.readLineSync();
                          while (input43 == '' ||
                              int.tryParse(input43!) == null) {
                            print(
                                'تعداد جدید محصول را درست وارد کنید\n0-انصراف');
                            input43 = stdin.readLineSync();
                          }
                          switch (input43) {
                            case '0':
                              {
                                main();
                              }
                            default:
                              {
                                productList[input4Int - 1].number =
                                    int.parse(input43);
                                print('محصول با موفقیت بروزرسانی شد');
                                main();
                              }
                          }
                        }
                    }
                  }
              }
            }
          }
        }
      case '5':
        {
          if (productList.length == 0) {
            print('هیچ محصولی ثبت نشده');
            main();
          }
          else {
            List<Product> newList = [];
            newList.addAll(productList.where((element) => element.number < 5));
            for (int k = 0; k < newList.length; k++) {
              print('${k + 1}-${newList[k].name}  ${newList[k]
                  .price}\$   Teedad: ${newList[k].number}');
            }
            main();
          }
        }
      case '6':
        break;
      default:{
        print('لطفا عدد را درست وارد کنید');
        main();
      }
    }
  }
}