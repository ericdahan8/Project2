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
        ("Cardboard", "img", "blurb Goes here"),
        ("Plastic", "img", "blurb Goes here"),
        ("Mixed Paper", "img", "blurb Goes here"),
        ("Glass", "img", "blurb Goes here"),
        ("Special Waste", "img", "blurb Goes here"),
        ("Aluminium", "img", "blurb")
        ;
INSERT INTO recyclables (itemname, isRecyclable, categoryID) 
    VALUES
        ("aluminium", true, 7),
        ("coke can", true, 7),
        ("beer bottle", true, 5),
        ("soup can", true, 1)
        ;
