import express from 'express';
import cors from 'cors';
//Importacion de la base de datos
import db from "./database/db.js";

const app = express();
app.use(express.json());
app.use(cors());



try {
    await db.authenticate()
    console.log('Conexion exitosa de la DB')
} catch (error) {
    console.log(`El error de conexion es: ${error}`)
}


//Establecer el servidor

app.listen(8000, () => {
    console.log('URL http://localhost:8000')
});