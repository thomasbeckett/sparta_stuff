describe("Lab", function() {

  describe("firstName" , function(){
    it("should be defined" , function(){
      expect(firstName).toBeDefined();
    });

    it("should contain a string" , function(){
      expect(typeof(firstName)).toBe("string");
    });
  });

  describe("namesArray", function() {
    it("should be defined" , function() {
      expect(namesArray).toBeDefined();
    });

    it("should only contain strings", function() {
      var count = namesArray.reduce(function(sum, value) {
        if(typeof(value) == "string") {
          sum++;
        }

        return sum;
      }, 0);

      expect(count).toBe(namesArray.length);
    });

    it("should contain the name variable in the third position", function() {
      expect(namesArray[2]).toBe(firstName);
    });
  });

  describe("numberOfNames" , function(){
    it("should be defined" , function(){
      expect(numberOfNames).toBeDefined();
    });

    it("should be the number of names in the namesArray" , function(){
      expect(numberOfNames).toBe(namesArray.length);
    });
  });

  describe("age" , function(){
    it("should be defined" , function(){
      expect(age).toBeDefined();
    });

    it("should contain a number" , function(){
      expect(typeof(age)).toBe("number");
    });
  });

  describe("younger" , function(){
    it("should be defined" , function(){
      expect(younger).toBeDefined();
    });

    it("should contain a third of the age variable", function(){
      expect(younger).toBe(age/3);
    });
  });

  describe("empty" , function(){
    it("should be null",function(){
      expect(empty).toBe(null);
    });
  });

  describe("phoneNumber" , function(){
    it("should be defined",function(){
      expect(phoneNumber).toBeDefined();
    });

    it("should match 07888777396" , function(){
      expect(phoneNumber).toMatch("07888777396");
    });
  });

  describe("friend" , function(){
    it("should be defined",function(){
      expect(friend).toBeDefined();
    });

    it("should equal the second value in namesArray" , function(){
      expect(friend).toBe(namesArray[1]);
    })
  });

  describe("sentence" , function(){
    it("should be defined",function(){
      expect(sentence).toBeDefined();
    });

    it("should match \"I'm not a number, I'm fairly sure I'm a String\"" , function(){
      expect(sentence).toBe("I'm not a number, I'm fairly sure I'm a String");
    });
  });

  describe("sentenceLength" , function(){
    it("should be defined",function(){
      expect(sentenceLength).toBeDefined();
    });

    it("should contain the length of the sentence variable" , function(){
      expect(sentenceLength).toBe(sentence.length);
    });
  });

  describe("BONUS person" , function(){
    it("should be defined", function(){
      expect(person).toBeDefined();
    });

    it("should be an object" , function(){
      expect(typeof(person)).toBe("object");
    });

    it("should have a name property that contains the firstName variable" , function(){
      expect(person.name).toBe(firstName);
    });

    it("should have a name property that contains the firstName variable" , function(){
      expect(person.name).toBe(firstName);
    });

    it("should have a friends property that contains the namesArray" , function(){
      expect(person.friends).toBe(namesArray);
    });

    it("should have an age property that contains the age variable" , function(){
      expect(person.age).toBe(age);
    });

    it("should have a phoneNumber property that contains the phoneNumber variable" , function(){
      expect(person.phoneNumber).toBe(phoneNumber);
    });

    it("should have a bestFriend property that contains the friend variable" , function(){
      expect(person.bestFriend).toBe(friend);
    });

    it("should have a quote property that contains the sentence variable" , function(){
      expect(person.quote).toBe(sentence);
    });
  });
});
