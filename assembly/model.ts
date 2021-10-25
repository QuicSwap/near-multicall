import { u128 } from 'near-sdk-as';

@nearBindgen
export class ContractCall { 
  addr: string;
  func: string; 
  args: string; 
  gas: u64;
  depo: u128;
}

@nearBindgen
export class SwapAction {
  // Pool which should be used for swapping.
  pool_id: u64;
  // Token to swap from.
  token_in: string;
  // Amount to exchange.
  // If amount_in is None, it will take amount_out from previous step.
  // Will fail if amount_in is None on the first step.
  amount_in: u128;
  // Token to swap into.
  token_out: string;
  // Required minimum amount of token_out.
  min_amount_out: u128;
}

@nearBindgen
export class MulticallArgs {
  schedules: ContractCall[][]; // function arguments
}

/*
import { JSON } from 'assemblyscript-json';
class JSONSchema {
  firstName: string
  lastName: string
  age: i32
}
const msg = '{"firstName":"Satoshi","lastName":"Nakamoto","age":420}';

// WHAT I WANT
const person1: JSONSchema = JSON.parse<JSONSchema>(msg);

// WHAT I HAVE
let jsonObj: JSON.Obj = <JSON.Obj>(JSON.parse(msg));
let firstNameOrNull: JSON.Str | null = jsonObj.getString("firstName");
let lastNameOrNull: JSON.Str | null = jsonObj.getString("lastName");
let ageOrNull: JSON.Num | null = jsonObj.getNum("lastName");
if (firstNameOrNull != null && lastNameOrNull != null && ageOrNull != null) {
  const firstName = <string> firstNameOrNull.valueOf();
  const lastName = <string> lastNameOrNull.valueOf();
  const age = <i32> ageOrNull.valueOf();
  const person2 = new JSONSchema();
  person2.firstName = firstName; person2.lastName = lastName; person2.age = age;
}
*/
