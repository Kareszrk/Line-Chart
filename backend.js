const pool = createPool({
    host: "HOST_COMES_HERE",
    user: "USERNAME_COMES_HERE",
    password: "PASSWORD_COMES_HERE",
    database: "DATABASE_COMES_HERE",
    connectionLimit: 10
});

router.get('/test', async (req, res) => {
    await pool.query(`SELECT SUM(egyenleg) as balance, DATE_FORMAT(datum, '%M - %Y') as month FROM egyenlegvaltozasok GROUP BY DATE_FORMAT(datum, '%M - %Y')`, (err, result, fields) => {
      if(err) throw err;
      let response_month = [];
      let response_balance = [];
      for(let i = 0; i < result.length; i++){
        response_month[i] = result[i].month;
        response_balance[i] = result[i].balance;
      }
      const response = {
        months: response_month,
        balances: response_balance
      }
      res.json(response);
    });
})