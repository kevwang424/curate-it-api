piece1 = Piece.create(title:"The Pre-arranged Flight", artist_name: "Jean-Honoré Fragonard", classification: "Paintings", century: "18th century", culture: nil, image_url: "http://nrs.harvard.edu/urn-3:HUAM:VRS49028_dynmc", dimensions: "59.1 x 50.2 cm (23 1/4 x 19 3/4 in.) framed: 82.2 x 73 x 10.3 cm (32 3/8 x 28 3/4 x 4 1/16 in.)", label_text: nil , commentary: nil, dated: nil)

piece2 = Piece.create(title:"Untitled (boy and German shepherd)", artist_name: "Bachrach Studios", classification:"Photographs" , century: "20th century", culture: nil, image_url:"http://nrs.harvard.edu/urn-3:HUAM:INV154934_dynmc", dimensions: "image: 24.2 x 19.2 cm (9 1/2 x 7 9/16 in.)", label_text: nil , commentary: nil, dated: nil )

piece3 = Piece.create(title:"Actor Ichikawa Monnosuke", artist_name: "Katsukawa Shunkô", classification:"Prints", century: nil, culture: nil, image_url:"http://nrs.harvard.edu/urn-3:HUAM:CARP00963_dynmc", dimensions: nil, label_text: nil , commentary: nil, dated: nil)

piece4 = Piece.create(title:"Kenny as Marilyn, Boston", artist_name: "Nan Goldin", classification:"Photographs", century: "20th century", culture: nil, image_url:"http://nrs.harvard.edu/urn-3:huam:DDC113375_dynmc", dimensions: "47.5 x 32.5 cm (18 11/16 x 12 13/16 in.) sheet: 50.8 x 40.6 cm (20 x 16 in.)", label_text: nil , commentary: nil, dated: nil)

piece5 = Piece.create(title:"Black Flag /Turrrrnnn Offff thhe Raaaadio", artist_name: "Raymond Pettibon", classification:"Prints", century: "20th century", culture: nil, image_url:"http://nrs.harvard.edu/urn-3:HUAM:INV121690_dynmc", dimensions: "sheet: 28 x 21.6 cm (11 x 8 1/2 in.)", label_text: nil , commentary: nil, dated: nil)


piece6 = Piece.create(title:"Winged Oval Cup (Erbei) Painted to Simulate Lacquer", artist_name: nil, classification:"Vessels", century: "1st-3rd century CE", culture: nil, image_url:"http://nrs.harvard.edu/urn-3:HUAM:CARP08644_dynmc", dimensions: "H. 4 x W. 14.2 x D. 10.1 cm (1 9/16 x 5 9/16 x 4 in.)", label_text: "Bronze and lacquer ritual vessels were expensive commodities that only the privileged class could afford, but in the Han dynasty, ceramic funerary wares that simulated these luxurious vessels became a more affordable means of outfitting one’s tomb, as a finished ceramic piece required far less fuel and specialized labor than a bronze or lacquer. The earthenware ceramics on display here date to the Western Han period (when the capital was located in modern-day Xi’an, Shaanxi province) and imitated ritual vessels with painted-lacquer decoration. Fired at relatively low temperatures, earthenware vessels are not fully vitrified and are slightly porous, making them less than ideal as containers for daily use, but suitable as burial items. Few colored compounds can withstand kiln temperatures without alteration; in order to replicate the multiple bright colors and dynamic designs of painted lacquers, mineral pigments were applied to earthenware vessels after firing and are hence “cold-painted.”", commentary: nil, dated: nil)

kevin = User.create(first_name: "Kevin", last_name: "Wang", email: "kevin@kevin.com", password: "1234" )

jing = User.create(first_name: "Jing", last_name: "Yu", email: "jing@jing.com", password: "1234" )

jenny = User.create(first_name: "Jenny", last_name: "Lai", email: "jenny@jenny.com", password: "1234" )

gallery_kevin = Gallery.create(name: "Kevin's Gallery", description: "YASSS QWEEEN", user_id: kevin.id)

gallery_jing = Gallery.create(name: "Jing's Palace", description: "I hate friends", user_id: jing.id)

gallery_jenny = Gallery.create(name: "Jenny's Museum", description: "Gurrllllll", user_id: jenny.id)

gallery_kevin2 =  Gallery.create(name: "Kevin's 2 Gallery", description: "Sashay Away", user_id: kevin.id)


GalleryPiece.create(gallery_id: gallery_jing.id, piece_id: piece1.id )
GalleryPiece.create(gallery_id: gallery_jing.id, piece_id: piece2.id )
GalleryPiece.create(gallery_id: gallery_jing.id, piece_id: piece3.id )
GalleryPiece.create(gallery_id: gallery_jing.id, piece_id: piece4.id )
GalleryPiece.create(gallery_id: gallery_kevin.id, piece_id: piece6.id )
GalleryPiece.create(gallery_id: gallery_kevin.id, piece_id: piece5.id )
GalleryPiece.create(gallery_id: gallery_kevin.id, piece_id: piece2.id )
GalleryPiece.create(gallery_id: gallery_kevin.id, piece_id: piece1.id )
GalleryPiece.create(gallery_id: gallery_jenny.id, piece_id: piece2.id )
GalleryPiece.create(gallery_id: gallery_jenny.id, piece_id: piece3.id )
GalleryPiece.create(gallery_id: gallery_jenny.id, piece_id: piece4.id )
GalleryPiece.create(gallery_id: gallery_jenny.id, piece_id: piece5.id )
GalleryPiece.create(gallery_id: gallery_jenny.id, piece_id: piece6.id )
GalleryPiece.create(gallery_id: gallery_kevin2.id, piece_id: piece6.id )
GalleryPiece.create(gallery_id: gallery_kevin2.id, piece_id: piece3.id )
GalleryPiece.create(gallery_id: gallery_kevin2.id, piece_id: piece1.id )
GalleryPiece.create(gallery_id: gallery_kevin2.id, piece_id: piece2.id )
