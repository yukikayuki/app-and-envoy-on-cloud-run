import express from 'express'
const app = express()
const DEFAULT_PORT = 3000

app.get('/', (req, res) => {
  return res.json({hello: 'next world'})
})

app.get('/hello', (req, res) => {
  return res.json({world: 'world'})
})

app.listen(process.env.PORT ?? DEFAULT_PORT, () => {
  console.log(`App listening on port ${process.env.PORT ?? DEFAULT_PORT}`)
})
