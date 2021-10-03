package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_998:BigInteger;
      
      private var var_2307:BigInteger;
      
      private var var_1947:BigInteger;
      
      private var var_2740:BigInteger;
      
      private var var_1542:BigInteger;
      
      private var var_1948:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1542 = param1;
         this.var_1948 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1542.toString() + ",generator: " + this.var_1948.toString() + ",secret: " + param1);
         this.var_998 = new BigInteger();
         this.var_998.fromRadix(param1,param2);
         this.var_2307 = this.var_1948.modPow(this.var_998,this.var_1542);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1947 = new BigInteger();
         this.var_1947.fromRadix(param1,param2);
         this.var_2740 = this.var_1947.modPow(this.var_998,this.var_1542);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2307.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2740.toRadix(param1);
      }
   }
}
