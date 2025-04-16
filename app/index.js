const express = require('express');
const app = express();

// Get IP even behind proxies like ALB
app.set('trust proxy', true);

app.get('/', (req, res) => {
  res.json({
    timestamp: new Date().toISOString(),
    ip: req.ip
  });
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`SimpleTimeService listening on port ${PORT}`);
});
