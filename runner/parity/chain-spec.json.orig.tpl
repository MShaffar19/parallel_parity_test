{% set nodes = [] %}
{% for n in range(aws.nodes) %}
  {% set _ = nodes.append(node_list[n]) %}
{% endfor %}
{
  "name": "Ouroboros",
  "engine": {
    "ouroboros": {
      "params": {
        "gasLimitBoundDivisor": "0x400",
        "stepDuration": "5",
        "securityParameterK": "60",
        "networkWideStartTime": "0x{{ STARTTIME }}",
        "validators": {
          "list": ["{{ nodes|join("\", \"") }}"]
        }
      }
    }
  },
  "params": {
    "maximumExtraDataSize": "0x20",
    "minGasLimit": "0x1388",
    "networkID": "0x2323"
  },
  "genesis": {
    "seal": {
      "ouroboros": {
        "step": "0x0",
        "signature": "0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
      }
    },
    "difficulty": "0x20000",
    "gasLimit": "0x80000000000000C0"
  },
  "accounts": {
    "0x0000000000000000000000000000000000000001": {
      "balance": "1",
      "builtin": {
        "name": "ecrecover",
        "pricing": {
          "linear": {
            "base": 3000,
            "word": 0
          }
        }
      }
    },
    "0x0000000000000000000000000000000000000002": {
      "balance": "1",
      "builtin": {
        "name": "sha256",
        "pricing": {
          "linear": {
            "base": 60,
            "word": 12
          }
        }
      }
    },
    "0x0000000000000000000000000000000000000003": {
      "balance": "1",
      "builtin": {
        "name": "ripemd160",
        "pricing": {
          "linear": {
            "base": 600,
            "word": 120
          }
        }
      }
    },
    "0x0000000000000000000000000000000000000004": {
      "balance": "1",
      "builtin": {
        "name": "identity",
        "pricing": {
          "linear": {
            "base": 15,
            "word": 3
          }
        }
      }
    },
    "0000000000000000000000000000000000000005": {
      "balance": "1",
      "constructor": "6060604052341561000f57600080fd5b5b6108658061001f6000396000f30060606040526000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff168063187e485d1461005f5780633e73016214610192578063800d8b99146101d3578063c3d8584214610299575b600080fd5b341561006a57600080fd5b6100a9600480803567ffffffffffffffff1690602001909190803573ffffffffffffffffffffffffffffffffffffffff169060200190919050506102ee565b604051808060200180602001838103835285818151815260200191508051906020019080838360005b838110156100ee5780820151818401525b6020810190506100d2565b50505050905090810190601f16801561011b5780820380516001836020036101000a031916815260200191505b50838103825284818151815260200191508051906020019080838360005b838110156101555780820151818401525b602081019050610139565b50505050905090810190601f1680156101825780820380516001836020036101000a031916815260200191505b5094505050505060405180910390f35b341561019d57600080fd5b6101d1600480803567ffffffffffffffff169060200190919080359060200190820180359060200191909192905050610509565b005b34156101de57600080fd5b61021d600480803567ffffffffffffffff1690602001909190803573ffffffffffffffffffffffffffffffffffffffff16906020019091905050610583565b6040518080602001828103825283818151815260200191508051906020019080838360005b8381101561025e5780820151818401525b602081019050610242565b50505050905090810190601f16801561028b5780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b34156102a457600080fd5b6102ec600480803567ffffffffffffffff1690602001909190803590602001908201803590602001919091929080359060200190820180359060200191909192905050610691565b005b6102f6610780565b6102fe610780565b6000808567ffffffffffffffff1667ffffffffffffffff16815260200190815260200160002060008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020600160008667ffffffffffffffff1667ffffffffffffffff16815260200190815260200160002060008573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020818054600181600116156101000203166002900480601f01602080910402602001604051908101604052809291908181526020018280546001816001161561010002031660029004801561045a5780601f1061042f5761010080835404028352916020019161045a565b820191906000526020600020905b81548152906001019060200180831161043d57829003601f168201915b50505050509150808054600181600116156101000203166002900480601f0160208091040260200160405190810160405280929190818152602001828054600181600116156101000203166002900480156104f65780601f106104cb576101008083540402835291602001916104f6565b820191906000526020600020905b8154815290600101906020018083116104d957829003601f168201915b50505050509050915091505b9250929050565b8181600260008667ffffffffffffffff1667ffffffffffffffff16815260200190815260200160002060003373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020919061057c929190610794565b505b505050565b61058b610780565b600260008467ffffffffffffffff1667ffffffffffffffff16815260200190815260200160002060008373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000208054600181600116156101000203166002900480601f0160208091040260200160405190810160405280929190818152602001828054600181600116156101000203166002900480156106835780601f1061065857610100808354040283529160200191610683565b820191906000526020600020905b81548152906001019060200180831161066657829003601f168201915b505050505090505b92915050565b83836000808867ffffffffffffffff1667ffffffffffffffff16815260200190815260200160002060003373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000209190610703929190610794565b508181600160008867ffffffffffffffff1667ffffffffffffffff16815260200190815260200160002060003373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000209190610777929190610794565b505b5050505050565b602060405190810160405280600081525090565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f106107d557803560ff1916838001178555610803565b82800160010185558215610803579182015b828111156108025782358255916020019190600101906107e7565b5b5090506108109190610814565b5090565b61083691905b8082111561083257600081600090555060010161081a565b5090565b905600a165627a7a72305820f57f48c65ba3d8fca856444c33c5a270f43d5217d90a01a8d2aa2c41fc6359d30029"
    },

"0x00bd138abd70e2f00903268f3db08f2d25677c9e": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x03677f2a23e7ad7470dd6abcc032b8f9c4a01e75b9486e439cb5117277f6ac82c9", "private_key": "0xe8b862a5482df8c6d6fd5efb0f7b8cb0ca087df2424660dccc0b3421ffe977a0" } },
"0x00aa39d30f0d20ff03a22ccfc30b7efbfca597c2": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02b8d736060f864e7a76528975fc9e6dd1e0c8999fb9d3899b8d480f9a3b656d3d", "private_key": "0x60096cce3a55502ab0b9e41ca7badf83beef7dc31c9a3ad54374abc9df4f9420" } },
"0x002e28950558fbede1a9675cb113f0bd20912019": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02f638cb6fed7f6457a2509c56bd5302734e8e204d432e757613ae7b7fd13ff7df", "private_key": "0xbe8d65330709a6ec68602f2ec41f62774de60efc9c65b0f168fb007b48f96e8d" } },
"0x00a94ac799442fb13de8302026fd03068ba6a428": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x032ed07a554ad291716e7863ef329e35bdf4252ade59cb19bd145aa3a21b3fefaa", "private_key": "0xb2251bd7f924f70e713e1590c250ff5d4802acf57a1cfea5796b6e6f0f7c64cb" } },
"0x00d4f0e12020c15487b2a525abcb27de647c12de": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x0391a5152bde82dc56b09283b21c5bbd6d8544d0948f5e885ed83f3db67359dbb6", "private_key": "0xe6ae35544ab644e30b8815237c9e729fc4c7dfa4c4126f41c73ddf0c0887b94f" } },
"0x001f477a48a01d2561e324f874782b2dd8167772": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x032ceac2c507848d1ab41e767e937c3a637481b0d1355134ece97eab878ef24c9d", "private_key": "0x3d9fdf8ed11cbf4da0a9b7213d50051546d9567a387d5f1f807120a6448456b0" } },
"0x006137d98307ab6691ccedb7a10b295da8ae1035": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x036fe783ccb030fd77c8170e1db310946edcc231ddb6250bd80ff2c56176f5c473", "private_key": "0x92cbd275e991c5e4749c840876fdead18b402172fa090df10692896561d49676" } },
"0x003f3b1f635b2dd9a4518c33098e5f72214d6a1e": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x03191127c0464dc6747c36e89b6ff35732f430a6a04fc76797457f2d8ce3153d6c", "private_key": "0xff5f4907c02ab6a16b6f0d33d9e9e708a7f9b1ad14e4704f3c4ea7850e72c03e" } },
"0x008272a8cfd2d3d0f3edc823b1bb729cb73f09db": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x031663b38eee9104b7d111167b8e4ab1bc6d7f8fd78ed2006efcff0aba3c715e74", "private_key": "0x3eb6405d3d1dcbd7182a8fb2e0076a4d48d61c5a26b478fa2a4c186ad569ee81" } },
"0x001ce0f63558e2fe10806d132d64d2b2f63ef64e": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x0266b0d0ab1ce2a8c04c23e8d7324700430d30267a50bf1c5e2c90ffc3c2214446", "private_key": "0x2c3fbd551a958933054b3e8e5f72a6660bb842a859f5fa8fb54e9606c4260065" } },
"0x0038658156bcb555c1aa24d1adabb57c36fbcd6d": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x038260b3cc87fd3cb53ba3d895c0aa44deee16f60f53690d3ba65bf798ed096a24", "private_key": "0x8d2052245b4451aa1ee9616f46892560c55f2deeeae608d790c72fda9cd14fda" } },
"0x006a8e26c9653d22f1cadb22a81428deaa8554be": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x0354cdfb3828cc6bbe2aa7fec99931c5c653fe1adeeee0325b7e8e3db505e84748", "private_key": "0xfac7f28383f80fb1f72bd92142e0771171d9a67f8497be4daffc1ae1c77c1126" } },
"0x00c3ca2fd819f4d2ea30c9fd99bf80c7c86f1f25": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x034d4a34f93432abb05935a87400ff85ac96577d07177e42691152369a72c71c7e", "private_key": "0x8767b34fe84a91df14b300878e0690560f7aa3121bb84d12ff559476e2d214d2" } },
"0x00734b960d1edd54e50192e47acfdc8af0fbbd20": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x0278e0c801ecd1269501fa1ac9ecde2b2c61f35164edb4499a6ac8818e7a1d0cd3", "private_key": "0x9e7e05ade9d52f8ceb61950655dc2cf25005c2f4067b9366fbccab2ed90771aa" } },
"0x002db24c08ed9397bc77a554e55f80d56be7b15f": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02bba3fe670fc01439ed5bed1bb254376e36df7f20bb3dd6e0ab4e34cccac69376", "private_key": "0x57c869647c3372eeecb7dfc22aba8743df4a0089c9ee0b1d799363e8d45cfbef" } },
"0x004f49d9267bce6bdefc0fe9065269fa5d24ead9": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02ab41cc690c3de88a7c16ec314bc2ad01928825c8f1b51139e17623cb73f38cc0", "private_key": "0xab2982c53221dd92c6aa05ec0c91ff411742dee8abb317dfe740c5266629ec73" } },
"0x00da2f656d0ae044234479e93d2006798046d6cd": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x032a747a25815e23de3bebb5fc9adec3bb81a8f1d46288c0978fe746d4c29f96f5", "private_key": "0x49f3adf5a7f77b09492adbdb78da7b75d6373928460bc106e79a4916a7e0afaa" } },
"0x004edc8b40e4c8210e7c25cd9236f2461bbf1ada": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x0275acb6621f6b15f1df631f2c3e17323942aaa2fb5260544f1cd9b1b87af793f5", "private_key": "0x04d0d9ae6aac1a3a2a3b8007fe40624f311916a4050d8626277a0bd8a0f5c8e7" } },
"0x00a6a2655ad6707e925bb6949a933f05690288bb": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x0221089ccf75cfe3a5f6ddb7d48f24724a43825b52922b53607ec70c968b09f544", "private_key": "0xcf37db15fc11285fc1e65281ddba896ac4f2421bda2dcaa241bce256afbd5a1a" } },
"0x002d7b6716b90ef6a10c9ecbf4bf1056cd62a41c": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x03e30e3a0805524fc6b976d9158cdf479e048a76e4710a5247f67e40e33f6df95e", "private_key": "0xccfe889c81e986e4933ecfc25be2b154362f0f3a648b24e4ba47ef2c0725ee" }   },
"0x0049555fbcd81a300481f8bab352f2bd0679140e": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x025182bcd63b340fb3e49b2d68e1c74796dba78620163c461f68f533c101428e4d", "private_key": "0x2d1a7b7f797d4082a2703bed3d9229a27b17b45c96458c8f6f90eca8fa2c96db" } },
"0x00ed8deb9564980fb8ccdbb0790c96c388819cda": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x0288402a21afb714779d7a6560ec22806d159e98c94fe66adc83599df77274f927", "private_key": "0x690baac5fcf80ad293353bc5d5038e3ed334bb6691bae548e482d3cc6f8adabd" } },
"0x00003be73d69d4d1dd3f37317af8cd6102207474": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x0276f90b84463f799a881e26eae83916ecc033d0bcaab8822049d183c80a64a324", "private_key": "0xe735b35883e1a2b6f4f0ef47728634ab9bf381a6529dfaaf2cfb42ad8880c9ff" } },
"0x0076b0b1660b718994f1204829c25fe49562c8aa": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02be69f9a620c66fc0b3df065374e5c8d761761794976c550fb3ca33e290a0520e", "private_key": "0x8e695a4bd9d0b999c2f84abf37ac7a525498129c756ac8c7684394caf79f6560" } },
"0x007eb5d06bfa8eafa5dac903e5d0dd07f999b039": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02ce22e0f48254d6d77b397b47c408cc9c5c3bedf7dfaf43674831a3f879a5542f", "private_key": "0xf91c52b2a5ae2928f2fe6c429442dfeb5b91018b8160d24cf18faee28bb3684e" } },
"0x001aed64a61102a4368537b152cb2e8ab8a43a85": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x0273e292977cea8a96c262ff43f181fd57bc66ad9f4b399cdb92af18ce381a49d1", "private_key": "0xc58d3642885a29ed406cde04e2d97055156a08b043b1d3043c3c03fc1d615515" } },
"0x005f889778840035633f8cd6f8bd851b22bbeb50": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x03d6b13b1bff707e062cae9e6c5d0d05ea3d2990b76c7bdc185db4327eaa5340e5", "private_key": "0xf338fb4228d9263574cf21993c0a2ea55f2b3039ec4525abce8a168c51c69c8a" } },
"0x006af9d0649a848589b84315a9416dfcc5f29da0": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02ddcb6f01cf88cad8ac347eeb4cf3773000f812fe02c1eaad523f0cc35900c6eb", "private_key": "0x5d1dae8ef49aa7946b35641cf6d06a3d8867aa6601b56183b9726f95188fc462" } },
"0x0011643db56f1a33b4c605fd97dee4f436b3c8ab": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x03dcb68a75cd439ca077effbe1d48d04e8f2496187c65b99b865973f5addf6a446", "private_key": "0x70b09548e22cf5a18fd59463a997745cc989e73890d67fa69808f1b33bbf19b7" } },
"0x00adf090b96409197d1befee8ee42ac265789eee": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x0374ab4777c3e889d34135d0d76ae15449f29e76d502f6e1d6d7e8b647fba66d36", "private_key": "0xeff0e7cbb7eb7a500500e90704e17fdb082b410c3a7b8ab43d0e543ba7431e38" } },
"0x00f01e9378c47358570a58c4a77397d25c59d486": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02bc998e1ca8eac32115a31625440bd32d7c88a0f6202db580af9e0ab6ca057cf1", "private_key": "0x7e86d4a4f324628eec118eba1d6c7fa6a602c0d47b662bd4396058ed86dfbda9" } },
"0x00b3474d2791dad3d06ffe2905a539e25d1fe393": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x03457ab5ffc9490d9d613e6b69750bb43b879fc72dd376961fc5db1964507bb907", "private_key": "0x746403fc17fc96952a13c96aecb964320c988dd2b4cfb9af628b0190e36d7741" } },
"0x00e65a58928634f79d9a49a007c546c39c8de4fc": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x03a0d4e81374dc3756ee3006142ecb494540414072ad43cd3721d26d799ddab706", "private_key": "0xef88fd3a96446dae918ed191362ef598b8164bf65dad5ed26c67efd0b7e49978" } },
"0x00d06b3745bf0a6daa577ff37213ad5cb1199613": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02a9245cb150ade28c788dac626cb9cf278096b0d8ad1612186c4fd6189498b9ea", "private_key": "0x2dc44b4138ad959e8fe60ce743f8205b77e67273125137af1f0023f381170d37" } },
"0x00e68b79e15de41f0e3a8aafc94db69b86ab2096": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02d1c86ed58ee707ef4b269dcbb9ed60ee109bdcfe350a1ba3d24cae5d45cf970a", "private_key": "0x61338c09ab0c53ace86ea039dde20a93e96f533231f9187fb1c7a315e8589b15" } },
"0x00b619a030abdbcf4ede137190035da7e2bb1370": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x03c93ee1943823483aee43a2cf8391de28cabff263ac0bd79243ea3cfac27a0236", "private_key": "0xd395fa353b94ee8c229fd911307cad82c1834bfdf8e0330e1179417599241290" } },
"0x00223ebecbe7c200ec9d6f04a6d0976f141186e7": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x033b5f9e5af624013e57aeb03f951c9a320450d407a96fec58ddd815daec98bd62", "private_key": "0x5514f053961e62a3fb8a01c36ea2dfa141bf706269264cca412f47476656da3d" } },
"0x002c4aabc8e46a6ce41a183204e76fe09b2548f1": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02931dfc911202c2269f1a4f14d66c3406f92748652c2042d1831c86aad1ba28a8", "private_key": "0x675e4ea46b63be3a3c0a1926e31ca5e33ce9bf0f447e107a5222d8759310a9de" } },
"0x00d133dc04104fd42652039a5d3133d14c8a584b": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02dcc324d362bcd455459124067af3c5dc1c4ba0a1b8796786e4703a65e259a2b6", "private_key": "0xc13d3a5a32dc9a5f3fd4ede760fb53f05e57f7bed3897263c84f760ff2156a25" } },
"0x00f40d382787c2f0b59f34389312fd2eb75b3bf9": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x028e18a69a5605b90dc0defedbaceb800ba4b3ac5207858eea6b2560a190fbf38e", "private_key": "0x26155dd5252f8f414316fc6d23987eeb0401649cddea580bedf9f999b088e3a8" } },
"0x00ae17ef3d1882f95bf19b0fa3f9c667ba3ae13b": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02bbd7e9e5905d795fa5e27473ee0ae081dc34e8564746a52357f55d45cfab8cc4", "private_key": "0x664971070dd5aae1433b0c5eaa8e1bbc4f5b3c0a4762492836854f956cc64f24" } },
"0x00a2b663ae44a6d43928fc258cb9c9f4f87eaa20": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x03f3bab43e82f52d46a07899f5d5bd73ba5682bdc6ceffc7c03d84f4dca50d7732", "private_key": "0xf1da0af78dd0ac5ee75a430d62d9e988776dac2e008c6d95c74324a468fb3378" } },
"0x008e8b08ae05bd84ce23f0f2c01cb665c2633f4f": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02b356c13d5c2a79da57f2bf1fa3f9dd5aa17c91fbb30869cbcc829b1a80a62749", "private_key": "0xc0de3529c9bf15ca302d9e0df4effc90bbe8f03c36c226567880f05da10e4db2" } },
"0x00b03014c3c9d5f2bbd5450c3e3824c625690b32": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x028e3e00bc9af03f39d1284d4338528471d80ce740d1e953fbe3686e906bc71636", "private_key": "0xc40343213fa435778fdcb36190bfa0093706c0d4ebc3e22285d41d30a60bfd99" } },
"0x009e31b032a677646fa6b9007953e1d627478499": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x03053243ae9324910fe87c29b4b60a06a848bb2984647414b52bc85b2b34c63210", "private_key": "0x070209d83af68cd1b70d89c6613fd99fc3b34951e9fd6a4dff7432935cac193a" } },
"0x00e2a389ffaca44e14408514aba25168aafab772": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x027a3d82e4aabab3cca877311adc14197fb6d4c315b59ec3b91a1d7770a2797c26", "private_key": "0xa92a1077eaeba20452b1bd42ef32ffdb5462b2e936b7adae6e7e1d6bd72640e9" } },
"0x00426207809552f20b7125b165e3f09306c02581": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02aba21165756a6b1db0b45f56e915f3c5834840a5f6d6713994b833136af71c47", "private_key": "0x2835d510959f81d808e90109093ec0032b09c9ae24a7d0a47ced4911096cf6ec" } },
"0x003ba5b4a66da56fe3c57c045a09860fcebc916f": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x03349eaf1293bd7c358980ee5ae173cd55852817f0c1f7b570e8282f16690f469e", "private_key": "0x5bf729f400fa437243c015f8fb584f539f4297e4ecda4646f7a1dba44964e1a2" } },
"0x004c5e895bf941722d6260024afcaf6c6e3e4317": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x0259cdb6936227f1925b5e11e3086f31250e9da0f131363afbf1ff591ae12f54d9", "private_key": "0xc3462fe3532c9d5921827044644229033e933c90af341523d5b1444b1463690b" } },
"0x00ec08e7b1e37c7127beea2563566798f9765d48": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x03fed46df425d27abd651b53ab883219122f5406b34fb33870397033542fc6f7c7", "private_key": "0xf82c1e8434da4c5b8a44bb18f801cb7575b8e5de59a0e803eb89513c8bfbcbf5" } },
"0x004b21347b2acef2454b805796d97d132e185427": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x03fe365ff9c88374ea2bfba6222302d64f3c1197b2f074d458599660a61eb068d8", "private_key": "0xce93cd45bbf1f92bada48dc24ede31c0a6c2e15cbe74a4f34130292149385867" } },
"0x00e74aefe209b1aeae44dbcf61739df290e803a8": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x0335a96a5a0372e099be3132db0fc01b91daae4251331471500644eabfbaf7dbfa", "private_key": "0x3d0381da9639ee3f2cd055e6ef768ba657d9139288dc1540e879ad48e4ec73a7" } },
"0x00b8d783d728fe35cc66fcbde6170d242fa33575": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02b8f8aa62a0e748ffd26c649a4e83259a198f786e775ab400d53e89c26412a380", "private_key": "0xb69f2534711d92f5940449db22f66fa43f7588531caf988b672e2a9df0ae944c" } },
"0x00d7b80b36520a1f1f7f9917a35ebeedd4f1753f": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x024a537d22bf043e52b03b70557dfc04b7a944a482d3986e64e667ddedf666f4ed", "private_key": "0x9a6a29cfda8a53c8da3f0f6f389dda15540d74cb2d42d9657d1fd55d1bf4f762" } },
"0x00c0d39f7ccaa0164776fba872e497b28d20ec8d": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x027c8f069a85aa658baac0a91cbce3eb913a6fb697aaf6f06c2bae43f536516314", "private_key": "0x1f6826e4277e382ad1633b456e6fb0ff4076083c37dea365ec2f21b3051e4aa1" } },
"0x00ef79bf598ea12e7111c22242df37c297b62533": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02aa390379acbbcbb1ed23ca62b12d464cce77b950b60703207f69c0b9bd59aa19", "private_key": "0x83388ceaf93090ffca560cb23437a44c48ab71e6bac7cde664b384fd439b9742" } },
"0x0068a5f8163226d5087d6298d723b043a86dd81d": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x0366fdbc8c914df49eb28fe27cca8d2ec80982e8f836e3a7ace4e15241f225d7fa", "private_key": "0xcfc4ab7722a63911821a44f953a524b1cf5cd49fff83f3708cd403a59af09891" } },
"0x00812df94f486421e22159fa12e1bde42466c689": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x0341609dd376542cefe7f3fa37c1764eac84ca28cf69eb5eaab8dfc449cfa69c9f", "private_key": "0xa4da9e4c817558554b5e58f67b7b057ee8f61085962136db902bc74ee37bb8c6" } },
"0x00d12640e7654756aeee07e1975c1523cd49f108": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x0300e3908a6990199a92ebb9dbe70060f405fb158eaae20880ff61ec653844097b", "private_key": "0xdf0410539f2011b607709af7260dea0ee24663eb5fd0c6567e10ee56bbf3697b" } },
"0x00c1479daf0d313fd6d39bcd3c17a97dcce03484": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02adae09452cb783e3a1a8dc20312dcf3e9cb58ed98c2cc5779e394d526912c970", "private_key": "0xce3493553deec859e49c3346187e58d656d732973a66fe20c629bf45eedc4f26" } },
"0x004004631b0abf9b3df3bcc328c44981fa008830": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02685b9d231ac5e6f6e44bcaab7464c01e0b2450ace36869ef9cae5a98687237b4", "private_key": "0xc4b1b15ae0626ccc81ac3a00537df2511ed4b168e524b4ba563584a79a962843" } },
"0x003a05176a28c5f390a1600f1074e8cd42e61022": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x0311aefe9017e58812c46cfbfd896ad64ea4efbe02b50ae060cd7e10ca265c39bc", "private_key": "0x5aa858db1deb1f07a4f48cf1ef700eb92b18540360e7c88c4b08f43e9680557b" } },
"0x0053e5cb706fb7a96a529cb7c66a59058bc475d1": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02be82fb0948adbef658b0e8f0433452439834fce5d94058ac2f5325668bdda60a", "private_key": "0x132a0b4c382d9ce5432d0ef3307e96b9a15de67d96abae161c60ddfa40d1eaba" } },
"0x00c40a31862f426455518f9a256cc0e162ee002d": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x029787bc7a071dc31671fe9b160ceea74afd62f21289895d9bdd4e812c9c077a00", "private_key": "0x9639cd5254a59f65ba493645d866c330cb6b03f63f0dca471707f51975e41104" } },
"0x00e74e0c089a9fa2864eac5ce815a3c757c50f00": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x0356a855ff70e08d7d2f62d966342f5e8e96768c09352e0ca8477e86568d20e48f", "private_key": "0x6a8ca18140041d72cf6b3a2f85a1ee721d7e903c8103fde96b7eba8d5c400727" } },
"0x00fce0162045a3f1b05797a4e3a45a7ef16c5abe": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02973565210a26ffddf759a134b9ab1dce26b772d30584c11d53218e64cba14e82", "private_key": "0x5e989d6f7326f0968808bc629face97ae800c42b6cab1266a332d1f564548599" } },
"0x008898e26779ca879d48b55cb5f2c6db52547158": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x03bfc3d2ae57093caa37f202a8af3d437c54a26e5a3002000c40794db49d152850", "private_key": "0x507fe9b53e00663417a7c709c8c9039a12cae285ae10c861a0726c5031ea9e06" } },
"0x00083afc005815fc157a0e4661f6b82fbb4dcdf2": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x024ef54f25ed07f9dccb0c13b78f6eb0fb5a9855bbb4867bdb669b0612a42f99f5", "private_key": "0x8eae8a9822e33d21aebe2fb85c12c2cd730c70958bc94de44af1e0d34d2b3e55" } },
"0x00061de7c3c50945ddecc3bcf1f45cde629e74ac": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02e174156c5460452d373b4cd67157d9f8d6a8396eaf93cccb6cbad80503df0819", "private_key": "0x863333b656e3d09630fad783900b39edb21e9da938fb4b73e20600ebd0fa9e5c" } },
"0x00fd134de0a68e22c5619daba487b40904d4431b": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x038c8d66aae7dc4a429fcd7dad78b65f2f0774d0402e0260ed0cbb710c62db89b3", "private_key": "0x4666bc9c76d41beaa1bfd99cf96a4f3ea0bc4739ab02015821fb9c3e5dc5299a" } },
"0x0081d2d8fc5cae15ac6597f9e4d2f73b4c85c96c": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02b6ad89d5494f55d4b9c002951960770b3b7140a4c6d6dac6cf7a2c7b360ee677", "private_key": "0x84a9a9d60014e1392b0dfadc8b49696a1c16d289057d92c9946f2b11ec1d959c" } },
"0x00527de3fd45942e2805833e698b9aaf06d540e6": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x032e4042a8fe169a3813e2ffdd5918e6da09d3cb6b982e5afabbf0e3477374e802", "private_key": "0x7bce626de8f337cf310085b94321d344fb32ce622e9bb1e7c0cfd8ceaf7e445f" } },
"0x00817512a64633f2b3007e1639c2d5907c4820a2": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x039d9e121b998b12f147f322e5d943d294e12406d77f73958939439e51d31ab7b8", "private_key": "0x4837ba124f83f58f2e6d8e12e540c998fb84a28570b815d22c47a3bbea0bc8d2" } },
"0x00124c53056481df4dc0e4947320f56c23885903": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02892ddd66886dc09f133d990d7ce32a6f89d9f57ef804aa5e0002b6795c7f7aa8", "private_key": "0x021323bcde13759a767f80c492207ba85097b1ea16e489c232eaa0a138ca3996" } },
"0x00e080f34c6b3db8e0f22430fbafb193bb38302e": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x022cd9e270e0bb31a04217210d457d561979545d0c8503037b3e97fed8e36243b3", "private_key": "0x88f208b72f927d242f24d8dd44080af1b4d3c8eee60a322903a13a52d349d122" } },
"0x002d93f1fdea2ee3c4ab153d17afe8925092f015": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x03873f3dd8227fec1068a30f8c06c5cfb66a8258f1defdc761add2358f4bce984a", "private_key": "0xe8c92c08059a4263deffcd34d107198bb3d9462fe25835b73012253b736fe355" } },
"0x00c72f71cd751f5da5b9dd71113c34f81e55a5d5": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x03ff7589cf3452dcf457e5d0ec71e8c5ae951610a2ca5a436fe9ce70cba7f40d5e", "private_key": "0x813c3e5be3a6d1c379853256c660d9b86e08185d48b3a11944608802dc3bdbe4" } },
"0x000a4c2088b401e63eeff6f129ef9607cebf51d5": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02768aa297bde3d4b7af063f3428e4256a6aa185d1792d96a64a71a2efe9eeb9e0", "private_key": "0xb617e9037a359449209bd5284071a0a1a9de701bf2a8cd5a70196bb1630f0fff" } },
"0x00d51032f6d1f360c1dcee809218c6aff59fbd55": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x03824960069560592f6dd9a360bcdea0dd7e5032837b4f16cdec5f437b8ca3bd74", "private_key": "0x81cf9d67952f0e00ee003cc0e9172b7b85e2f8e40b0c62f1401c8e8d7631e976" } },
"0x00d5234d2f7f8a070e29fb898843847d234c5f2c": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02356e1f7bcb1e03ffea24796b8f4152293494f23f9c70ab658bca97cc07753ed4", "private_key": "0x4f5db72bb6fedc3eea441e81064382bf2b6a462c7c453a09a61ee4eb5d121ad2" } },
"0x0031d76dbed964d3af0c0a15d59e429064933f93": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x033851569c54c1305c39740e70c8feca60d1b60498f4e6a487ea9407793fb97dbb", "private_key": "0x08b920bcd4fa92f3ed2408177723386fe5f1d71028c9db7d3921d9eb352f3494" } },
"0x00146b5b933c70e7a8bb3eada28c62796ff3677b": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02a653700662b058e0c56de720f819890ac0bbbe60f9dcaca2e1ecf765fca06160", "private_key": "0x0833fffc19c24f8628bd5d7335f4e0f5aea2c09a0e58fb1e970f181057cfb891" } },
"0x00c504104a33e8cefb81308defa5afbb1aac9d43": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x0387fa1b4066f437db74074b7eb1458b4eb3e98d90a3ffdb46a591858d8e01f935", "private_key": "0x6110007958d48908ff2591206e89841d9d416fa1b39254e886f3ba60706645dd" } },
"0x003c169b511683973e6fbfef3c3cf6c3a1ff6b6e": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02934ae610dd923c061d2aa1da54074cba2e624f764f931f98f26625d696bb3805", "private_key": "0x373601f9a13f9235b4a145a3100d4d2edca3322d38ead541ae2959ae47d654d6" } },
"0x005cae8b6a7278243ee569085e09b5e2e39dc48a": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x03b8ca024650678dab24d878d74fa62a2d7365c418cf82098ffc6f81486b5fd17a", "private_key": "0xede828f0762d965c624caad8b8fa17a315d8791c2289448b165ec77b1f7f9381" } },
"0x00eb5e88765137c12eae5f95c598fcbbe40990db": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x0316ce532bf08bdf98f72774f881fb6434ec4d1ffa584a9748b95047d06810c20a", "private_key": "0xa288075736ab2a266b03411adcb4f9e2418fa9c96fadc8111527304935338b4e" } },
"0x009bc3b72159690b405f20e551a43e6f2dd349f7": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x022420f7b5c76a319ca10d1ce716fee4d61f9d6fa031e77d07646ff525890473b7", "private_key": "0x907a017e60b8d1c43e88555d0ba7f062a233091df8a6b10cd83fd746e0c4e835" } },
"0x005972224738e0718bcad10ec215d17fee5e7da4": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x032bbbd0a1b80ca58c9aca6c1b8b266e6cae26f0f19e03a6a52a3db0d38cceea12", "private_key": "0x9687750489aa06dccc299f6fa58c52a3ece9da5b9412709624276a9d03b90dd0" } },
"0x001570a4126275382c009d24cb780cb8808f21af": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x035a42c4ba763f4170fa2d3689f9db324fe59c2f23a95301795c3f952508b339ae", "private_key": "0x1e8af6a533fddd3328bdd539e5d23df274b784464d488b2c83b8350b59a13f9d" } },
"0x00b10d76db110d3ffce64dfa5ff65a1ef1351be5": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02e277abf110f156f525e5851234c2259872371b11ee306cc9b9938ad522e9d25c", "private_key": "0x5f62c0d28b01066d452eab3eea609393cee01c01d61645e9ca0536ef4dd3b02c" } },
"0x00a857bc15bf45133538f3821cae9179eb5a7764": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02c8e4be53820945e21e1e1389c1d6e98023f86332bdbbd8ec757b922cbc858b89", "private_key": "0xc2d939c1b20ec10a853979bd5811ec261f856e06838cdbd607dc978a816266c6" } },
"0x003503d923c15e72f4d0064925f8bf0d47adcac8": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x03a285a538c1945e6e48c2cd153ae4165963b0848ffbeeef68b066c1dfd79f5796", "private_key": "0xd097d413bcca9a8ac63704d6f3d6ad27b659249ec5d773e18655feef537fcd62" } },
"0x0066d1f6c348a9033f34358a6679cbfa31a75823": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02b004940290a176c9dc1a3569075bdd61ad4c65ff8ae493fce4109d25191575ee", "private_key": "0xd57e964ae70e45aea7f2715e1bc829a2359e8c26acf4de7922214b75ab91933c" } },
"0x006567dadcaa57d2d3a02a2a2231b841d471c841": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x028ded3b33ca5e0d060005b1f927e3262f6c4714d4d1632623f152afb55d28d50f", "private_key": "0xc3b4576538ffa417c6aba990e1fb77c39468cbe2aab904349f3d28f908f725ef" } },
"0x004637122ad18e79c81f9fa48c4f39fdafe8c947": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x0359188ad9c47e2eb456c12f47acd4dafad57dc7049086cce6d582c55bf604efba", "private_key": "0xe7c05e1d660829edf0d5267fec6bf54de1bea7aa896f950d567a402541038a8d" } },
"0x0067cd4c75b38f5bd56876b0b298e6259dc7c038": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x027d47a99fc5da2fe44c489803c0203b20f353c61d39a42cd3c8b37c61a1944aae", "private_key": "0xdb6aaecf662399cc6aead7b302fc469c6d57c0b26c8aa85c63f9eb591c79f0e0" } },
"0x00aaeaa0feaa1ca81936300d826861c102d5fe7a": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x03e3e333ae9ac5fb3125888a8123a4772815fa599c245d219865053f5a2e62d8e9", "private_key": "0xb72d861c12cd5272c141cab8f2dd1736c256b14ce507b0256f4462943a6a197f" } },
"0x006dfe1153d6820b800d8d29c4cc341b8a2d88bc": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x03679222b2eebdf9066ab2d0739697e2795c81240168451f8215a870c847a7822d", "private_key": "0x48643819487a8035e0e3dc2a983a751f9c117e7c17c66299347b83aac3f8d48e" } },
"0x001f1ef4756dea00cd6db32dec78e01c66c855c1": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x025302b0d84b1152019611c43a94920cff06377c5c5ea25b7cc435bf6e22ff19f8", "private_key": "0x2df97dde6918420d51ad0af800746a2a8e6a00d8a0e823fa129baa8c5b54833e" } },
"0x006a921d46ede3d33ff09643d81ed0459194e07c": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x036c1b26a3cee43a31ee5e844fb4c20de31b2a7df0d9afc22c51425df09720807f", "private_key": "0x25bdd6d3e52381812f6e224c3c23f758b14db58bb9457e96e43f122ab56bd067" } },
"0x0071e43424df2f00a7436cbb503a574720071fdc": { "balance": "10000000000000000000000", "pvss": { "public_key": "0x02f8745ef969b89b8daa336c2c03df4fb5dbc5bf6ec61be66da9e8117945e21a12", "private_key": "0x0bc137f51ef3742c298fe0fdedc46a89acba0e06b9efcec0fb54a4f649161098" } }
}}
