package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1890:int = 0;
      
      public static const const_1517:int = 1;
      
      public static const const_1562:int = 2;
      
      public static const const_1961:int = 3;
      
      public static const const_1985:int = 4;
      
      public static const const_1928:int = 5;
      
      public static const const_1671:int = 10;
      
      public static const const_1907:int = 11;
      
      public static const const_1995:int = 12;
      
      public static const const_1899:int = 13;
      
      public static const const_2027:int = 16;
      
      public static const const_1893:int = 17;
      
      public static const const_1906:int = 18;
      
      public static const const_2013:int = 19;
      
      public static const const_1835:int = 20;
      
      public static const const_2034:int = 22;
      
      public static const const_1903:int = 23;
      
      public static const const_1979:int = 24;
      
      public static const const_1989:int = 25;
      
      public static const const_2014:int = 26;
      
      public static const const_1867:int = 27;
      
      public static const const_1911:int = 28;
      
      public static const const_1918:int = 29;
      
      public static const const_2009:int = 100;
      
      public static const const_1838:int = 101;
      
      public static const const_1839:int = 102;
      
      public static const const_1910:int = 103;
      
      public static const const_1862:int = 104;
      
      public static const const_1962:int = 105;
      
      public static const const_1940:int = 106;
      
      public static const const_1821:int = 107;
      
      public static const const_1831:int = 108;
      
      public static const const_1909:int = 109;
      
      public static const const_1898:int = 110;
      
      public static const const_1865:int = 111;
      
      public static const const_1984:int = 112;
      
      public static const const_1930:int = 113;
      
      public static const const_1952:int = 114;
      
      public static const const_1861:int = 115;
      
      public static const const_1990:int = 116;
      
      public static const const_2007:int = 117;
      
      public static const const_1881:int = 118;
      
      public static const const_1975:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1517:
            case const_1671:
               return "banned";
            case const_1562:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
