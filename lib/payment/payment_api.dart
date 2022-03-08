import 'package:flutter/material.dart';
import 'package:paystack_manager/paystack_pay_manager.dart';

class PaymentApi extends StatefulWidget {
  const PaymentApi({Key? key}) : super(key: key);

  @override
  _PaymentApiState createState()=> _PaymentApiState();
}
class _PaymentApiState extends State<PaymentApi>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payment with paystack',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: MaterialButton(
            onPressed: () => _checkPayment(),
            child: const Text('Proceed to make payment'),
            color: Colors.lightGreen,
        )),

      ),
    );
  }

  void _checkPayment(){
    try{
      PaystackPayManager(context:context)
          ..setSecretKey('sk_live_02be958661126c75e1ba1653dc8454929b73d1fe')
          ..setAmount(100000)
          ..setReference(DateTime.now().millisecondsSinceEpoch.toString())
          ..setCurrency("NGN")
          ..setEmail("franknjoe2@gmail.com")
          ..setFirstName("Frank")
          ..setLastName("Joseph")
          ..setMetadata(
            {
              "custom_fields": [{
                "value": "Frankwork",
                "display_name": "Payment_to",
                "variable_name" : "Payment_to"
              }

              ]
            },
          )
          ..onSuccesful(_onPaymentSuccessful)
          ..onPending(_onPaymentPending)
          ..onFailed(_onPaymentFailed)
          ..onCancel(_onCancel)
          ..initialize();
    }catch(error){
      print('payment Error ==> $error');
    }
  }
  void _onPaymentSuccessful(Transaction transaction){
    print('Transaction successful');
    print("Transaction message ==> ${transaction.message}, Ref ${transaction.refrenceNumber}");

  }
  void _onPaymentPending(Transaction transaction){
    print('Transaction Pending');
    print("Transaction Ref ${transaction.refrenceNumber}");

  }

  void _onPaymentFailed(Transaction transaction){
    print('Transaction failed');
    print("Transaction message ==> ${transaction.message}");
  }
  void _onCancel(Transaction transaction){
    print('Transaction cancelled');
  }
}