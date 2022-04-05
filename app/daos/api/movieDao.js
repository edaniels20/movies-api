const con = require('../../config/dbconfig')

const daoCommon = require('../daoCommon')

const movieDao = {
    
    ...daoCommon,
    // findAll and FindById

    table: 'movie',

    create: (req, res)=> {
        if(Object.keys(req.body).length === 0) {
            res.json({
                "error": true,
                "message": "No fields to create"
            })
        } else if(!req.body.title) {
            res.json({
                "error": true,
                "message": "Must include a title"
            })
        } else {
            delete req.body.hr;
            delete req.body.min;
            const fields = Object.keys(req.body)
            const values = Object.values(req.body)

            con.query(
                `INSERT INTO movie SET ${fields.join(' = ?, ')} = ?`,
                values,
                (error, dbres)=> {
                    if(!error) {
                        res.json({Last_id: dbres.insertId})
                    } else {
                        console.log(' DAO ERROR ', error)
                    }
                }
            )
        }
    },

    update: (req, res)=> {
        const fields = Object.keys(req.body)
        const values = Object.values(req.body)
        con.query(`UPDATE movie SET ${fields.join(' = ?, ')} = ?`,
        values,
        (error, dbres)=> {
            if(!error) {
                res.send(`Changed ${dbres.changedRows} row(s)`)
            } else {
                console.log(' DAO ERROR ', error)
                res.send('Error updating record')
            }
        })
    },

    findAll: (res, req, table)=> {

        const search = req.query.search;
        let data = []

        con.query(`SELECT ${table}.*, rating.rating FROM ${table} INNER JOIN rating ON ${table}.rating = rating.rating_id;`,
        (error, rows)=> {
            if(!error) {
                if(!search) {
                    data = rows
                } else {
                    rows.forEach(item => {
                        if(item.title.toLowerCase().includes(search.toLowerCase())) {
                            data.push(item)
                        }
                    })
                }
                if(rows.length === 1) {
                    res.json(...rows)
                } else {
                    res.json(data)
                }
            } else {
                console.log(' DAO ERROR ', error)
            }
        })
    },
}

module.exports = movieDao