pragma solidity ^0.5.14;
import "./roles/AdminRoles.sol";
import 'multi-token-standard/contracts/tokens/ERC1155/ERC1155MintBurn.sol';
import 'multi-token-standard/contracts/tokens/ERC1155/ERC1155Metadata.sol';

contract RoboData is ERC1155MintBurn,ERC1155Metadata,AdminRoles{


   function MintBadge(address _recipient,uint _type,uint quantity) public onlyMinter() {
      
        _mint( _recipient, _type, quantity, "");

    }

    function setBaseMetadataURI(string memory _newBaseMetadataURI) public onlyOwner{
        _setBaseMetadataURI( _newBaseMetadataURI); 

    }
}





