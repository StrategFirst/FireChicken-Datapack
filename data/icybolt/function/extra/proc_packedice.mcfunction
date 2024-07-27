execute store result storage fcpack:icybolt packedice.page int 1 run random value 0..7

execute if data storage fcpack:icybolt {"packedice":{"page":0}} run advancement grant @s only icybolt:icybolt/frozenbook_page1
execute if data storage fcpack:icybolt {"packedice":{"page":1}} run advancement grant @s only icybolt:icybolt/frozenbook_page2
execute if data storage fcpack:icybolt {"packedice":{"page":2}} run advancement grant @s only icybolt:icybolt/frozenbook_page3
execute if data storage fcpack:icybolt {"packedice":{"page":3}} run advancement grant @s only icybolt:icybolt/frozenbook_page4
execute if data storage fcpack:icybolt {"packedice":{"page":4}} run advancement grant @s only icybolt:icybolt/frozenbook_page5
execute if data storage fcpack:icybolt {"packedice":{"page":5}} run advancement grant @s only icybolt:icybolt/frozenbook_page6
execute if data storage fcpack:icybolt {"packedice":{"page":6}} run advancement grant @s only icybolt:icybolt/frozenbook_page7
execute if data storage fcpack:icybolt {"packedice":{"page":7}} run advancement grant @s only icybolt:icybolt/frozenbook_page8