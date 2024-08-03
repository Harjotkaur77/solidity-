      to the amount that is supposed to be burned.
*/

contract MyToken {
  
    // public variables here
    string public tokenname = "METACRAFTERS";
    string public tokenabbrv ="MCS";
    uint public totalsupply =0;
    // mapping variable here
    mapping(address => uint) public balances;
    // mint function
    function mint (address _add,uint _val) public{
        totalsupply += _val;
        balances[_add] += _val;      
    }
    // burn function
    function burn (address _add,uint _val) public{
        if (balances[_add]>=_val){
            totalsupply -= _val;
            balances[_add] -= _val;

        }
    }
}