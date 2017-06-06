/**
 * Created by Manjesh on 14-05-2016.
 */

module.exports = {
  sql: {
    database: 'redfenix_oauth',
    username: 'sfe',
    password: 'root1234',
    dialect: 'postgresql', // PostgreSQL, MySQL, MariaDB, SQLite and MSSQL See more: http://docs.sequelizejs.com/en/latest/
    logging: true,
    timezone: '+05:30',
  },
  // mongo: {
  //   uri: 'mongodb://localhost@127.0.0.1:27017/gloryque_quarc'
  // },
  seedDB:false,
  seedMongoDB:false,
  seedDBForce:true,
  db:'postgresql' // mongo,sql if you want to use any SQL change dialect above in sql config
}