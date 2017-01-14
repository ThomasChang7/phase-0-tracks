classroom = {
  my_desk: {
    books:[
            "Catcher in the Rye",
            "Geometry",
            "Nutritrion 101",
            "Captain Underpants"
          ],
    supplies: {
        pens: 5,
        pencils: 1,
        erasers: 2
      },
    electronics: ["Motorola Razr",
                    "Gameboy Advance",
                    "Calculator"
                  ]
  },
  freds_desk: {
    books:[ "Wheel of Time",
            "Harry Potter",
            "Quantum Physics"
          ],
    supplies: {
        ruler: 1,
        pencil_sharpener: 1,
        pencils: 10
    },
    electronics: [
                    "Sidekick",
                    "Calculator",
                    "Mp3 Player"
                  ]
  },
  melissas_desk: {
    books:[
            "Flute for Intermediate Students",
            "Cooking for Kids"
          ],
    supplies: {
        pens: 1,
        pencils: 4,
        rubber_bands: 24
    },
    electronics: [  "Samsung Galaxy",
                    "Mp3",
                    "Calculator"]
  }
}
p classroom[:melissas_desk][:books][0]
p classroom[:freds_desk][:supplies][:pencils]
p classroom[:my_desk][:electronics][2]
