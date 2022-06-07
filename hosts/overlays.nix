self: super:  {

	      picom = super.picom.overrideDerivation (oldAttrs: {
			      name = "picom";
			      src =  super.fetchFromGitHub {
			      owner = "ibhagwan";
			      repo = "picom";
			      rev = "82ecc90b51fa2489d26ef3f08abe1f06efcb53d8";
			      sha256 ="0pk1711kd6qqjhghrc73ldjl0m82p53yiiz5acyxvaw55hvm558h";
			      };
			      });

      }
