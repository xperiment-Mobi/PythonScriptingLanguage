package com.xperiment.PythonScript.nodes
{



	public class SLValue  {
	
		private static var BEFORE:int = -1;
		private static var EQUAL:int  =  0;
		private static var AFTER:int  =  1;
		
		public var value:Object;
	
	
		public function SLValue(v: Object):void {
			if (v == null) {
				throw new Error("v == null");
			}
			value = v;
			// only accept boolean, list, number or string types
			if (!(isBoolean() || isList() || isNumber() || isString())) {
				throw new Error("invalid type: ");
			}
		}
	
		public function asBoolean():Boolean {
			return Boolean(value);
		}
	
		public function asDouble():Number {
			return Number(value);
		}
	
		public function asLong():Number {
			return Number(value);
		}
	
	
		public function asString():String{
			return String(value);
		}
		
		public function asList():Array {
				return (value as Array);
		}
	
		public function compareTo(that:SLValue):int {
			if(this == that) return EQUAL;
			
			if (this.value.isNumber() && that.value.isNumber())   return compareToHelper(this.value.asNumber(),that.value.asNumber());
			if (this.value.isString() && that.value.isString())   return compareToHelper(this.value.asString(),that.value.asString());
			if (this.value.isBoolean() && that.value.isBoolean()) return compareToHelper(this.value.asBoolean(),that.value.asBoolean());
			

			if (value.isList() && that.value.isList()) {
				compareToHelper(value.toString(),that.value.toString());
			}

			throw new Error("illegal expression: can't compare `"+ value + "` to `" + that.value + "`");
		
		}
		
		private function compareToHelper(a:*,b:*):int{
			if (a < b) return BEFORE;
			else if (a > b) return AFTER;	
			return EQUAL;
			
		}
	
		public function equals(o:Object):Boolean {
			if (value == null || o == null) {
				throw new Error("can't use VOID: " + this + " ==/!= "
						+ o);
			}
			if (this == o) {
				return true;
			}
			if (o == null || typeof(this.value) != typeof(o.value)) {
				return false;
			}
			var that:SLValue = SLValue( o );
			
			if (this.isNumber() && that.isNumber()) {
			/*	var diff:Number =  Math.abs(this.asDouble() - that.asDouble());
				return diff < 0.00000000001;
			} else {
				return this.value.equals(that.value);*/
				return this.value.equals(that.value);
			}
			return false;
		}
	
	
/*		public int hashCode():Boolean {
			return value.hashCode();
		}*/
	
		public function isBoolean():Boolean {
			return value is Boolean;
		}
	
		public function isNumber():Boolean {
			return value instanceof Number;
		}
	
		public function isList():Boolean {
			return (value is Array || value is Vector.<Object>);
		}
	
		public function isNull():Boolean {
			return this == null;
		}
	

	
		public function isString():Boolean {
			return value is String;
		}
	
		public function toString():String {
			return isNull() ? "NULL" : String(value);
		}
	}
}