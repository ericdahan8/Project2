USE `ilgd6w3fv2b1hprm`;

TRUNCATE TABLE categories;
TRUNCATE TABLE recyclables;
INSERT INTO categories (name, imagelink, description) 
    VALUES 
        ("Metal", "../images/metal.jpg", 
        "<p>Metal Recyclables Include:</p>
        <ul>
            <li>metal cans (soup, pet food, empty aerosol cans, empty paint cans, etc.)</li>
            <li>aluminum foil and foil products (wrap and trays)</li>
            <li>metal caps and lids</li>
            <li>household metal items (wire hangers, pots, tools, curtain rods, small appliances that are mostly metal, certain vehicle license plates, etc.)</li>
            <li>bulky metal items (large metal items, such as furniture, cabinets, large mostly metal appliances, DOES NOT INCLUDE electronic devices banned from disposal)</li>
        </ul>"), 
        ("Cardboard", "../images/cardboard.jpg", 
        "<p>Cardboard Recyclables Include:</p>
        <ul>
            <li>cardboard egg cartons</li>
            <li>cardboard trays</li>
            <li>smooth cardboard (food and shoe boxes, tubes, file folders, cardboard from product packaging)</li>
            <li>pizza boxes (remove and discard soiled liner; recycle little plastic supporter with rigid plastics)</li>
            <li>paper cups (waxy lining ok if cups are empty and clean; recycle plastic lids with rigid plastics)</li>
            <li>corrugated cardboard boxes (flattened and tied together with sturdy twine)</li>
        </ul>"),
        ("Plastic", "../images/plastic.jpg", "
        <p>Plastic Recyclables Include:</p>
        <ul>
            <li>plastic bottles, jugs, and jars</li>
            <li>rigid plastic caps and lids</li>
            <li>rigid plastic food containers (yogurt, deli, hummus, dairy tubs, cookie tray inserts, “clamshell” containers, other rigid plastic take-out containers)</li>
            <li>rigid plastic non-food containers (such as “blister-pack” and “clamshell” consumer packaging, acetate boxes)</li>
            <li>rigid plastic housewares (flower pots, mixing bowls, plastic appliances, etc.)</li>
            <li>bulk rigid plastic (crates, buckets, pails, furniture, large toys, large appliances, etc.)</li>
        </ul>"
        
        "<p>Note: Rigid plastic is any item that is mostly plastic resin—it is relatively inflexible and maintains its shape or form when bent.</p>"),


        ("Mixed Paper", "../images/paper.jpg",  
        "<p>Mixed Paper Recyclables Include:</p>
        <ul>
            <li>newspapers, magazines, catalogs, phone books, mixed paper</li>
            <li>white and colored paper (lined, copier, computer; staples are ok)</li>
            <li>mail and envelopes (any color; window envelopes are ok)</li>
            <li>receipts</li>
            <li>paper bags (handles ok)</li>
            <li>wrapping paper</li>
            <li>soft-cover books (phone books, paperbacks, comics, etc.; no spiral bindings) (schools should follow their school  book recycling procedures)</li>
        </ul>"),
        ("Glass", "../images/glass.jpg", "<p>Glass Recyclables Include:</p>
        <ul>
            <li>Glass bottles and jars ONLY</li>
            <p>Glass is fairly easy and common to recycle</p>
            
        </ul>"),
        ("Special Waste", "../images/special-waste.jpg",  "<p>Special Waste Recyclables Include:</p>
        <ul>
            <li>Paper with heavy wax or plastic coating (candy wrappers, take-out and freezer containers, etc.)</li>
            <li>Soiled or soft paper (napkins, paper towels, tissues)</li>
            <li>Hardcover books (schools should follow their school  book recycling procedures)</li>
            <li>Batteries</li>
            <li>Electronic devices banned from disposal</li>
            <li>Printer cartridges</li>
            <li>Glass items other than glass bottles and jars (such as mirrors, light bulbs, ceramics, and glassware)</li>
			<li>Window blinds</li>
            <li>Foam plastic items (such as foam food service containers, cups and trays, foam protective packing blocks, and, and foam packing peanuts)</li>
            <li>Flexible plastic items (such as single-serve food and drink squeezable pouches and tubes such as toothpaste, lotion, cosmetics, or sports balls such as basketballs, bowling balls, soccer balls, footballs, yoga balls)</li>
            <li>Film plastic (such as plastic shopping bags and wrappers.) Bring plastic bags and film to participating stores for recycling</li>
            <li>Cigarette lighters and butane gas lighters</li>
            <li>Cassette and VHS tapes</li>
            <li>Pens and markers</li>
            <li>“Tanglers” (such as cables, wires, cords, hoses)</li>
            <li>Rigid plastic containers containing medical “sharps” or disposable razors</li>
            <li>Containers that held dangerous or corrosive chemicals</li>
       </ul>"),
       
        ("Trash", "../images/waste.png", "<h1>THROW THIS IN THE TRASH</h1>"
        "<p>This is non-recyclable!!</p>"
        
       )
       
        ;
INSERT INTO recyclables (itemname, isRecyclable, categoryID) 
    VALUES
        ("aluminium", true, 1),
        ("coke can", true, 1),
        ("beer bottle", true, 5),
        ("soup can", true, 1),
        ("water bottle", true, 3),
        ("coffee cup", false, 7),
        ("laptop", true, 6),
        ("batteries", true, 6),
        ("aluminium foil", true, 1),
        ("tray", true, 1),
        ("wires", true, 1),
        ("pots", true, 1),
        ("tools", true, 1),
        ("vehicle", true, 1),
        ("tin", true, 1),
        ("carboard box", true, 2),
        ("pizza box", true, 2),
        ("paper cups", true, 2),
        ("egg carton", true, 2),
        ("carton", true, 2),
        ("bottle of water", true, 3),
        ("container", true, 3),
        ("caps", true, 3),
        ("lids", true, 3),
        ("hummus", true, 3),
        ("buckets", true, 3),
        ("straw", false, 7),
        ("poland spring", true, 3),
        ("dasani", true, 3),
        ("fiji water", true, 3),
        ("essentia", true, 3),
        ("newspaper", true, 4),
		("magazines", true, 4),
        ("phone book", true, 4),
        ("catalog", true, 4),
        ("paper", true, 4),
        ("mail", true, 4),
        ("envelope", true, 4),
        ("receipts", true, 4),
        ("paper bag", false, 7),
        ("wrapping paper", true, 4),
        ("books", true, 4),
        ("glass", true, 5),
        ("glass", true, 5),
        ("glass bottle", true, 5),
        ("glass jar", true, 5),
        ("mac", true, 6),
        ("dell", true, 6),
        ("electronics", true, 6),
        ("mobile", true, 6),
        ("phone", true, 6),
        ("mobile phone", true, 6),
        ("pens", true, 6),
        ("napkins", true, 6),
        ("paper towel", true, 6),
        ("tissues", true, 6),
        ("printer", true, 6),
        ("printer cartridge", true, 6),
        ("light bulb", true, 6),
        ("mirrors", true, 6),
        ("ceramic", true, 6),
        ("window blinds", true, 6),
        ("foam", false, 7),
        ("toothpaste", true, 6),
        ("lotion", true, 6),
        ("cosmetic", true, 6),
        ("football", true, 6),
        ("basketball", true, 6),
        ("soccer ball", true, 6),
        ("lighters", true, 6),
        ("cigarette lighter", true, 6),
        ("gas lighter", true, 6),
        ("markers", true, 6),
        ("cassette", true, 6),
        ("VHS tape", true, 6),
        ("cable", true, 6),
        ("hose", true, 6),
        ("razors", true, 6),
        ("chemicals", true, 6),
        ("corrosive", true, 6),
        ("plastic film", false, 7),
        ("coded paper", false, 7),
        ("soiled paper", false, 7),
        ("dirty paper", false, 7),
        ("food scraps", false, 7),
        ("furniture", false, 7),
        ("car battery", true, 6),
        ("alkaline battery", false, 7),
        ("battery", true, 6),
        ("plastic bottle", true, 3),
        ("latex", false, 7),
        ("used paper", true, 4)
        
        ;