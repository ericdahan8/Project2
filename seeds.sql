USE `ilgd6w3fv2b1hprm`;

TRUNCATE TABLE categories;
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
            <li>plastic bottles, jugs, and jars/li>
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
       </ul>")
       
        ;
INSERT INTO recyclables (itemname, isRecyclable, categoryID) 
    VALUES
        ("aluminium", true, 7),
        ("coke can", true, 7),
        ("beer bottle", true, 5),
        ("soup can", true, 1)
        ;
