fetch('kviz.db').then(res => res.arrayBuffer())
.then(buffer => {
    const Uints = new Uint8Array(buffer);
    initSqlJs({locateFile: file => `https://sql.js.org/dist/${file}`})
    .then(SQL => {
        const db = new SQL.Database(Uints);
        console.log("Database loaded successfully");
        db.run("CREATE TABLE IF NOT EXISTS `kerdesek` (`id` int(11) NOT NULL,`kerdes` varchar(300) NOT NULL,`valasz1` varchar(200) NOT NULL,`valasz2` varchar(200) NOT NULL,`valasz3` varchar(200) NOT NULL,`helyes` int(3) NOT NULL)");
        const insertstmt = "INSERT INTO `kerdesek` (`id`, `kerdes`, `valasz1`, `valasz2`, `valasz3`, `helyes`) VALUES (1, 'Körülbelül hány millió km-re van a Nap a Földtől?', '117', '150', '189', 2);";
        db.run(insertstmt);
        const data = db.exec("SELECT * FROM kerdesek");
        console.log(data);
        

    });
});