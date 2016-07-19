defmodule Kitchen.Fields do

 def lookup("item-hash") do
    [
        {"item-hash", %{"datatype"=> "string"}}
    ]
end

 def lookup("id") do
    [
        {"id", %{"datatype"=> "integer"} }
    ]
 end

 def lookup("entry-timestamp") do
    [
        {"entry-timestamp", %{"datatype"=> "datetime"}}
    ]
end

  def lookup(name) do
    :ets.lookup(:fields, name)
  end

  # TODO(RJ): Fetch this from the fields register....
  def get_fields do
 %{
  "country"=> %{
    "entry-number"=> "334",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>a77c35a853ea8adce1922cadd664fe6548a7b34e322e53f8d28517ee22138ee5",
    "text"=> "ISO 3166-2 two letter code for a country.",
    "field"=> "country",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "country",
    "cardinality"=> "1"
  },
  "street-classification"=> %{
    "entry-number"=> "49",
    "entry-timestamp"=> "2016-03-18T15=>12=>19Z",
    "item-hash"=> "sha-256=>5d22aeadbb3331ef8837b13519f6bc8eaa3749c95ec93f908b6903da2ec4bada",
    "text"=> "The classification of a street.",
    "field"=> "street-classification",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "street-classification",
    "cardinality"=> "1"
  },
  "copyright"=> %{
    "entry-number"=> "345",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>c7e5a90c020f7686d9a275cb0cc164636745b10ae168a72538772692cc90d633",
    "text"=> "Copyright for the data in the register.",
    "field"=> "copyright",
    "phase"=> "alpha",
    "datatype"=> "text",
    "cardinality"=> "1"
  },
  "street-authority"=> %{
    "entry-number"=> "42",
    "entry-timestamp"=> "2016-03-18T15=>12=>19Z",
    "item-hash"=> "sha-256=>213e852bfb3df7901b58d2355826a336c6d35cceae1f18b38f8536e73922c78c",
    "text"=> "Local authority or other organisation responsible for street naming and numbering",
    "field"=> "street-authority",
    "phase"=> "beta",
    "datatype"=> "curie",
    "register"=> "street-authority",
    "cardinality"=> "1"
  },
  "food-premises-types"=> %{
    "entry-number"=> "348",
    "entry-timestamp"=> "2016-04-12T15=>11=>52Z",
    "item-hash"=> "sha-256=>75b16285c0b0ff34e8e0912c235ed4716f69e6329a5194fdc0dc4c329d26d323",
    "text"=> "A set of food premises types.",
    "field"=> "food-premises-types",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "food-premises-type",
    "cardinality"=> "n"
  },
  "organisation"=> %{
    "entry-number"=> "48",
    "entry-timestamp"=> "2016-03-18T15=>12=>19Z",
    "item-hash"=> "sha-256=>04250ed3358f85686fd22b9b696e1497974f36f7a9ca43d9e2a4853f13337d3c",
    "text"=> "A public body or other organisation",
    "field"=> "organisation",
    "phase"=> "alpha",
    "datatype"=> "curie",
    "cardinality"=> "1"
  },
  "citizen-names"=> %{
    "entry-number"=> "304",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>09e8e5ac1b6664ca5a769b1c13b2071ada291ada9db927031692279cf93431f1",
    "text"=> "Name for the citzens of a country.",
    "field"=> "citizen-names",
    "phase"=> "alpha",
    "datatype"=> "string",
    "cardinality"=> "1"
  },
  "parent-address"=> %{
    "entry-number"=> "54",
    "entry-timestamp"=> "2016-03-18T15=>12=>19Z",
    "item-hash"=> "sha-256=>d31ff40707ec250723a16130bdf737589e58386658e77774e080b83f8ec95357",
    "text"=> "An address to which an address belongs to.",
    "field"=> "parent-address",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "address",
    "cardinality"=> "1"
  },
  "food-premises-rating-confidence-in-management-score"=> %{
    "entry-number"=> "350",
    "entry-timestamp"=> "2016-04-12T15=>11=>52Z",
    "item-hash"=> "sha-256=>3cf7e755304a4438ece2b12a682bbb778b380bfee281a64e7f02cbce7f987ede",
    "text"=> "Level of confidence with management. Lower scores are better.",
    "field"=> "food-premises-rating-confidence-in-management-score",
    "phase"=> "alpha",
    "datatype"=> "integer",
    "cardinality"=> "1"
  },
  "street-surface"=> %{
    "entry-number"=> "61",
    "entry-timestamp"=> "2016-03-18T15=>12=>19Z",
    "item-hash"=> "sha-256=>ca52f25a5801177e8eddcd90922cd7a944f96a0456e0dbd3b9b83c9185fe117b",
    "text"=> "The surface finish of the street.",
    "field"=> "street-surface",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "street-surface",
    "cardinality"=> "1"
  },
  "food-premises-rating-hygiene-score"=> %{
    "entry-number"=> "307",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>997421b6e67551a62f93aa5106fe28249149bcb337f248b6b3b7cd385bad9930",
    "text"=> "Level of compliance with food hygiene and safety procedures including food handling practices and procedures, and temperature control. Lower scores are better.",
    "field"=> "food-premises-rating-hygiene-score",
    "phase"=> "alpha",
    "datatype"=> "integer",
    "cardinality"=> "1"
  },
  "school"=> %{
    "entry-number"=> "330",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>cb945c34ab916fa447a0943e05590cd81e974fafc7ce6b0f570ab9bf87437f39",
    "text"=> "A school in the UK.",
    "field"=> "school",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "school",
    "cardinality"=> "1"
  },
  "uk"=> %{
    "entry-number"=> "303",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>f020a359f1f9c977854decaa3052bfa984b59b3aa987267deeba4de74ed892ba",
    "text"=> "A constituent unit of the United Kingdom of Great Britain and Northern Ireland or a Crown dependency",
    "field"=> "uk",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "uk",
    "cardinality"=> "1"
  },
  "premises"=> %{
    "entry-number"=> "342",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>e6eed880a0c6c31b962c3f3105b907fbf74892c34f1275f6c16114e8d7ae0a30",
    "text"=> "A business premises.",
    "field"=> "premises",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "premises",
    "cardinality"=> "1"
  },
  "property"=> %{
    "entry-number"=> "310",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>b91ad25f9d6db4b2588ff1724c09e4bf18f13538862efdeb051c7b9c0a5f0eed",
    "text"=> "A building, institution or house name in an address.",
    "field"=> "property",
    "phase"=> "alpha",
    "datatype"=> "string",
    "cardinality"=> "1"
  },
  "religious-character"=> %{
    "entry-number"=> "309",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>3ea6cd2c25946c1965a512d3bf2d096c5b4795cf8fad0aa8c9d4464af9feca26",
    "text"=> "Religious character of school as declared by the school.",
    "field"=> "religious-character",
    "phase"=> "alpha",
    "datatype"=> "string",
    "cardinality"=> "1"
  },
  "text"=> %{
    "entry-number"=> "336",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>ceae38992b310fba3ae77fd84e21cdb6838c90b36bcb558de02acd2f6589bd3f",
    "text"=> "Description of register entry.",
    "field"=> "text",
    "phase"=> "alpha",
    "datatype"=> "text",
    "cardinality"=> "1"
  },
  "longitude"=> %{
    "entry-number"=> "320",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>105621a1707510d16be14b6a5a11347eda4dab0314a9d9a5f89a50602f7b71c6",
    "text"=> "Longitude of a place.",
    "field"=> "longitude",
    "phase"=> "alpha",
    "datatype"=> "string",
    "cardinality"=> "1"
  },
  "crest"=> %{
    "entry-number"=> "326",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>05754701f6a95f1205c6b049a61add062d2f98b17aa168268e80d8ad2d4acceb",
    "text"=> "Official crest for a government body.",
    "field"=> "crest",
    "phase"=> "alpha",
    "datatype"=> "url",
    "cardinality"=> "1"
  },
  "phase"=> %{
    "entry-number"=> "308",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>1c5a799079c97f1dcea1b244d9962b0de248ba1282145c2e815839815db1d0a4",
    "text"=> "Phase of a register or service as defined by the [digital service manual](https=>//www.gov.uk/service-manual).",
    "field"=> "phase",
    "phase"=> "alpha",
    "datatype"=> "string",
    "cardinality"=> "1"
  },
  "area"=> %{
    "entry-number"=> "324",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>d8b50e38c1d16dc7abfa84329a5b43009b2b0c6ff0edd2cdd3d9f28b789c5767",
    "text"=> "The administrative area of an address.",
    "field"=> "area",
    "phase"=> "alpha",
    "datatype"=> "string",
    "cardinality"=> "1"
  },
  "food-premises"=> %{
    "entry-number"=> "352",
    "entry-timestamp"=> "2016-04-12T15=>11=>52Z",
    "item-hash"=> "sha-256=>9d844a608467ed2602909c63c37ee315280081945c7814ddf944bfe8a3b96bdc",
    "text"=> "A premises which serves or processes food.",
    "field"=> "food-premises",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "food-premises",
    "cardinality"=> "1"
  },
  "parent-bodies"=> %{
    "entry-number"=> "328",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>d4753032c3de17efc5c255221da406a63941dcff03d79c7ab149c4632a58e52e",
    "text"=> "Parent bodies.",
    "field"=> "parent-bodies",
    "phase"=> "alpha",
    "datatype"=> "string",
    "cardinality"=> "n"
  },
  "town"=> %{
    "entry-number"=> "343",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>66e63a0bf090589c2c6b6f04bb00b96344a3fed81dd0bd2696c762ed7029ddc3",
    "text"=> "The town of an address.",
    "field"=> "town",
    "phase"=> "alpha",
    "datatype"=> "string",
    "cardinality"=> "1"
  },
  "postcode"=> %{
    "entry-number"=> "300",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>bc2ac1d18b2172c19372fba27308ed05554fdc6f9d938cff1c903b86313bbab8",
    "text"=> "UK Postcodes.",
    "field"=> "postcode",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "postcode",
    "cardinality"=> "1"
  },
  "locality"=> %{
    "entry-number"=> "329",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>4b21f41f73f1483b4be35171904cbe7adeb2256df14f384d91ff70d4c24e8199",
    "text"=> "The area within a post town.",
    "field"=> "locality",
    "phase"=> "alpha",
    "datatype"=> "string",
    "cardinality"=> "1"
  },
  "official-colour"=> %{
    "entry-number"=> "302",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>414537ee6db7991c2dd505f3b8f467aa070160239390876c3a5834bd47b7cdd3",
    "text"=> "Official colour for a public body.",
    "field"=> "official-colour",
    "phase"=> "alpha",
    "datatype"=> "string",
    "cardinality"=> "1"
  },
  "primary-address"=> %{
    "entry-number"=> "7",
    "entry-timestamp"=> "2016-03-18T15=>12=>19Z",
    "item-hash"=> "sha-256=>208ad8f095570e336f894d9d2e608a174a21a6721b2fa1c43915a016d34cffe0",
    "text"=> "The address whose name may be taken as the BS7666 Primary Addressable Object",
    "field"=> "primary-address",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "address",
    "cardinality"=> "1"
  },
  "food-premises-rating-value"=> %{
    "entry-number"=> "306",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>45c51f9308ac650f80c80b63aa19ea9af863d08b037152986a3188a0c53f6286",
    "text"=> "A rating of the food hygiene served at a premises, 0-5 with 5 meaning 'very good'.",
    "field"=> "food-premises-rating-value",
    "phase"=> "alpha",
    "datatype"=> "integer",
    "cardinality"=> "1"
  },
  "field"=> %{
    "entry-number"=> "356",
    "entry-timestamp"=> "2016-04-12T15=>11=>52Z",
    "item-hash"=> "sha-256=>d3762b6076eaa68d26137da2c21daffcd66a27eda3014194cfec8ac9ddd1753e",
    "text"=> "Field name of register entry.",
    "field"=> "field",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "field",
    "cardinality"=> "1"
  },
  "maximum-age"=> %{
    "entry-number"=> "351",
    "entry-timestamp"=> "2016-04-12T15=>11=>52Z",
    "item-hash"=> "sha-256=>97d834927123b4d1e9fc553e22d3287b34c7a79efd9fcfd506846f6ac2561eff",
    "text"=> "Maximum intake age for pupils at a school.",
    "field"=> "maximum-age",
    "phase"=> "alpha",
    "datatype"=> "integer",
    "cardinality"=> "1"
  },
  "name"=> %{
    "entry-number"=> "332",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>0b0414ef4211c96339905c3a5f990350537f01bf24c66477c75c2902b4ba52a2",
    "text"=> "Name of field",
    "field"=> "name",
    "phase"=> "alpha",
    "datatype"=> "string",
    "cardinality"=> "1"
  },
  "registered-office"=> %{
    "entry-number"=> "354",
    "entry-timestamp"=> "2016-04-12T15=>11=>52Z",
    "item-hash"=> "sha-256=>13f92d803b07a8aac2595e350df9ae5809342300729c628f6c0bee9836f5a96f",
    "text"=> "Registered address for a company or other legal entity.",
    "field"=> "registered-office",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "address",
    "cardinality"=> "1"
  },
  "administrative-area"=> %{
    "entry-number"=> "45",
    "entry-timestamp"=> "2016-03-18T15=>12=>19Z",
    "item-hash"=> "sha-256=>75e47ab1c16978bde939a07728f3492244c632590056fd902dcbf21d687a8c35",
    "text"=> "A local authority or other administrative area.",
    "field"=> "administrative-area",
    "phase"=> "alpha",
    "datatype"=> "curie",
    "cardinality"=> "1"
  },
  "fields"=> %{
    "entry-number"=> "344",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>61138002a7ae8a53f3ad16bb91ee41fe73cc7ab7c8b24a8afd2569eb0e6a1c26",
    "text"=> "Set of field names.",
    "field"=> "fields",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "field",
    "cardinality"=> "n"
  },
  "government-domain"=> %{
    "entry-number"=> "347",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>bc49e6acda95dd4ef93d5f242c2dd604343143d912084c35813f9e4be86a984f",
    "text"=> "A domain",
    "field"=> "government-domain",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "government-domain",
    "cardinality"=> "1"
  },
  "gender"=> %{
    "entry-number"=> "333",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>e8795c9dd76af58bb15b0541321ca386a2ad1505058a3a28505dcd237c9cedec",
    "text"=> "Gender.",
    "field"=> "gender",
    "phase"=> "alpha",
    "datatype"=> "string",
    "cardinality"=> "1"
  },
  "line"=> %{
    "entry-number"=> "1",
    "entry-timestamp"=> "2016-03-18T15=>12=>19Z",
    "item-hash"=> "sha-256=>492e55712f7a9485216155e55d8681b681939354be678637b983cdd647efe2db",
    "text"=> "A series of geographical points forming a line",
    "field"=> "line",
    "phase"=> "alpha",
    "datatype"=> "line",
    "cardinality"=> "1"
  },
  "minimum-age"=> %{
    "entry-number"=> "355",
    "entry-timestamp"=> "2016-04-12T15=>11=>52Z",
    "item-hash"=> "sha-256=>0c3cfcce55493e8bd30a2b0b309dc5abf2e2e844a002dcd42ff5e2fc2cb9d5c1",
    "text"=> "Minimum intake age for pupils at a school.",
    "field"=> "minimum-age",
    "phase"=> "alpha",
    "datatype"=> "integer",
    "cardinality"=> "1"
  },
  "latitude"=> %{
    "entry-number"=> "313",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>52c98b6782a4631243970b55535cc6b90eb236006ee80a64bd8531d075a9065f",
    "text"=> "Latitude of a place.",
    "field"=> "latitude",
    "phase"=> "alpha",
    "datatype"=> "string",
    "cardinality"=> "1"
  },
  "start-date"=> %{
    "entry-number"=> "319",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>fe5b4abb055cacfb0c71d139b50ec88fa6697e7b094f1d032578914b4bda6526",
    "text"=> "Start datetime for the applicability of a register entry.",
    "field"=> "start-date",
    "phase"=> "alpha",
    "datatype"=> "datetime",
    "cardinality"=> "1"
  },
  "industry"=> %{
    "entry-number"=> "325",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>1a8e0cdec3f3cf87f7f2f6cbd5d8b940c2499828ace20f706127d20bb0e011e1",
    "text"=> "Standard industrial classification.",
    "field"=> "industry",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "industry",
    "cardinality"=> "1"
  },
  "public-body-type"=> %{
    "entry-number"=> "349",
    "entry-timestamp"=> "2016-04-12T15=>11=>52Z",
    "item-hash"=> "sha-256=>b4871b0c0be8c22acef7d9a84910ea3be572ac85a9c2906abea484406034b108",
    "text"=> "Type of government body.",
    "field"=> "public-body-type",
    "phase"=> "alpha",
    "datatype"=> "string",
    "cardinality"=> "1"
  },
  "point"=> %{
    "entry-number"=> "339",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>6e9fcca562bccd7e6da6e21d565fbe378680f21088c624863bc7e6ed35402946",
    "text"=> "A geographical location",
    "field"=> "point",
    "phase"=> "alpha",
    "datatype"=> "point",
    "cardinality"=> "1"
  },
  "public-body"=> %{
    "entry-number"=> "321",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>131185d6054c749ca2d6ed879bf80398a99a9e33e049ec1dcc6ca9fea3fe5321",
    "text"=> "A UK governmental body.",
    "field"=> "public-body",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "public-body",
    "cardinality"=> "1"
  },
  "food-premises-type"=> %{
    "entry-number"=> "314",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>372b3bd261de67123c9b3d3a3d94e900c47be0a98f66b5c9ece2e49d77604378",
    "text"=> "The type of food premises.",
    "field"=> "food-premises-type",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "food-premises-type",
    "cardinality"=> "1"
  },
  "datatype"=> %{
    "entry-number"=> "305",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>ff1c1957df65b31a2b2e24be3ac1e2bf81d0d97ee327a3a9477b76c9921a4ec9",
    "text"=> "The data type for constraining a field value.",
    "field"=> "datatype",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "datatype",
    "cardinality"=> "1"
  },
  "street"=> %{
    "entry-number"=> "346",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>6f3c85090641b9a6b153681de23fa0c7c8ad7ae2cc67acb51bcbb6ba88453b7e",
    "text"=> "The number and street name of an address.",
    "field"=> "street",
    "phase"=> "alpha",
    "datatype"=> "string",
    "cardinality"=> "1"
  },
  "name-cy"=> %{
    "entry-number"=> "60",
    "entry-timestamp"=> "2016-03-18T15=>12=>19Z",
    "item-hash"=> "sha-256=>b5be0cd639679a1f79744dbcbde8cc340b9cea91354caf7a0b45423fd10b1319",
    "text"=> "Welsh name for a register entry.",
    "field"=> "name-cy",
    "phase"=> "beta",
    "datatype"=> "string",
    "cardinality"=> "1"
  },
  "company"=> %{
    "entry-number"=> "317",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>43e49c0464b61b08a6b8e932b969cd308294c8f884c53262a3df534ebd62f86f",
    "text"=> "A UK registered company.",
    "field"=> "company",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "company",
    "cardinality"=> "1"
  },
  "food-premises-rating-structural-score"=> %{
    "entry-number"=> "357",
    "entry-timestamp"=> "2016-04-12T15=>11=>52Z",
    "item-hash"=> "sha-256=>e96b542f16e0ada1de501e1ad097f3a43bef7e6b147ad0cf61e1bc4adda2bd3a",
    "text"=> "Level of compliance with structural requirements including cleanliness, layout, condition of structure, lighting, ventilation, facilities etc. Lower scores are better.",
    "field"=> "food-premises-rating-structural-score",
    "phase"=> "alpha",
    "datatype"=> "integer",
    "cardinality"=> "1"
  },
  "email"=> %{
    "entry-number"=> "331",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>1f02eabf9eb6dd849535e053d872234894c499e0b5ff6557e7c1376a32c47611",
    "text"=> "An email address for contact.",
    "field"=> "email",
    "phase"=> "alpha",
    "datatype"=> "string",
    "cardinality"=> "1"
  },
  "owner"=> %{
    "entry-number"=> "299",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>98c121d31fe74a436d33e6a24becbad41a3162f8b30b99a9bd6e0919c7ad0dcc",
    "text"=> "An owner of government domain",
    "field"=> "owner",
    "phase"=> "alpha",
    "datatype"=> "string",
    "cardinality"=> "1"
  },
  "food-premises-rating-reply"=> %{
    "entry-number"=> "301",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>a829a15c600f0379b3e573f3279fa0f5e923e27376e2a90a7e3b2fcf17d113a1",
    "text"=> "An explanation by a food-premises to potential customers any actions that have taken to improve hygiene standards after a food hygiene rating has been given or to say if there were particular circumstances at the time of the inspection that might have affected the rating.",
    "field"=> "food-premises-rating-reply",
    "phase"=> "alpha",
    "datatype"=> "text",
    "cardinality"=> "1"
  },
  "registry"=> %{
    "entry-number"=> "353",
    "entry-timestamp"=> "2016-04-12T15=>11=>52Z",
    "item-hash"=> "sha-256=>3619afa704cd8c2027a47e7872b3bb2ba493ee1decfcc7f1a67eb263451a8a8f",
    "text"=> "Body responsible for maintaining one or more registers",
    "field"=> "registry",
    "phase"=> "alpha",
    "datatype"=> "curie",
    "register"=> "public-body",
    "cardinality"=> "1"
  },
  "website"=> %{
    "entry-number"=> "322",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>55c3719e77161b5b629474d5ff35ac17a6482f90b66474d996a3f3448cd931c5",
    "text"=> "Website for register entry.",
    "field"=> "website",
    "phase"=> "alpha",
    "datatype"=> "url",
    "cardinality"=> "1"
  },
  "address"=> %{
    "entry-number"=> "311",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>cf5700d23d4cd933574fbafb48ba6ace1c3b374b931a6183eeefab6f37106011",
    "text"=> "A place in the UK with a postal address.",
    "field"=> "address",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "address",
    "cardinality"=> "1"
  },
  "business"=> %{
    "entry-number"=> "298",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>ef4d4df278198e17be195c1c94f040c2755e359a20eaffe69720303d4787f9ee",
    "text"=> "A Limited Company, School or other legal entity that trades.",
    "field"=> "business",
    "phase"=> "alpha",
    "datatype"=> "curie",
    "register"=> "company",
    "cardinality"=> "1"
  },
  "food-premises-rating"=> %{
    "entry-number"=> "323",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>bb361a9ab74cb46d6b0f5fdd04714df571d3c5aac0583fb5e7368a022decba5a",
    "text"=> "A rating of a food premises for hygeine.",
    "field"=> "food-premises-rating",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "food-premises-rating",
    "cardinality"=> "1"
  },
  "inspector"=> %{
    "entry-number"=> "335",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>d2bc219a694ecdbf963a2fd11dd6f165c62304710ba95edf18e707a8c7e26429",
    "text"=> "The organisation conducting an inspection",
    "field"=> "inspector",
    "phase"=> "alpha",
    "datatype"=> "curie",
    "cardinality"=> "1"
  },
  "cardinality"=> %{
    "entry-number"=> "340",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>4329cd8ee3180ac812b56e8329aa4ecd35082c175de7a5772b8ea147a1deda2d",
    "text"=> "Number of elements of the set (1 or n).",
    "field"=> "cardinality",
    "phase"=> "alpha",
    "datatype"=> "string",
    "cardinality"=> "1"
  },
  "local-authority"=> %{
    "entry-number"=> "316",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>2e034f906cfe758b6a87c0c8d472768a264d1cb5045b47fa6593199f8e675a25",
    "text"=> "A Local Authority in England, Scotland, Wales or Northern Ireland.",
    "field"=> "local-authority",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "local-authority",
    "cardinality"=> "1"
  },
  "end-date"=> %{
    "entry-number"=> "327",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>af1ea3d47321ec6ef2f0ab13ad039a130303574188f4a1ce1916703c5c5fa7f1",
    "text"=> "End datetime for the applicability of a register entry.",
    "field"=> "end-date",
    "phase"=> "alpha",
    "datatype"=> "datetime",
    "cardinality"=> "1"
  },
  "official-name"=> %{
    "entry-number"=> "341",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>c71eeef633885fea5c287a8addcf5b541bdd82866abe3834494fc04df2e59da6",
    "text"=> "Official name of country",
    "field"=> "official-name",
    "phase"=> "alpha",
    "datatype"=> "string",
    "cardinality"=> "1"
  },
  "company-status"=> %{
    "entry-number"=> "318",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>dc3ffcfe9b1b37bd14f5d3392fb27cffc5f364c4a1d0a9e9c0cff9aac195f596",
    "text"=> "The status of a UK company.",
    "field"=> "company-status",
    "phase"=> "alpha",
    "datatype"=> "string",
    "cardinality"=> "1"
  },
  "headteacher"=> %{
    "entry-number"=> "312",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>4f2995b4d6365459f420f10f6cc37f21cba569ceed1017aef8fb87a0a9139d18",
    "text"=> "Headteacher of school.",
    "field"=> "headteacher",
    "phase"=> "alpha",
    "datatype"=> "string",
    "cardinality"=> "1"
  },
  "location"=> %{
    "entry-number"=> "337",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>beed7dd544c63c3bf4bbfcf890b223609babb6fe6d53331cfe2e561c3746e9df",
    "text"=> "A geographic location found in government data which may be published under an open government licence",
    "field"=> "location",
    "phase"=> "alpha",
    "datatype"=> "curie",
    "register"=> "location",
    "cardinality"=> "1"
  },
  "register"=> %{
    "entry-number"=> "315",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>955a84bcec7dad1a4d9b05e28ebfa21b17ac9552cc0aabbc459c73d63ab530b0",
    "text"=> "A register name.",
    "field"=> "register",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "register",
    "cardinality"=> "1"
  },
  "territory"=> %{
    "entry-number"=> "338",
    "entry-timestamp"=> "2016-04-12T15=>11=>51Z",
    "item-hash"=> "sha-256=>3d96f3ae1c93e1d04e2fd2077a0054786f56f2da0b92b53d4510cab836560ec5",
    "text"=> "A territory",
    "field"=> "territory",
    "phase"=> "alpha",
    "datatype"=> "string",
    "register"=> "territory",
    "cardinality"=> "1"
  }
}
end

end