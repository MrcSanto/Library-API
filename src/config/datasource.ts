import {DataSource} from "typeorm";
import BookEntity from "../components/book-catalog/entities/book-entity";

export const datasource: DataSource = new DataSource({
    type : 'postgres',
    host: process.env.DB_HOST,
    port: process.env.DB_PORT ? parseInt(process.env.DB_PORT) : 5432,
    username: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    entities: [BookEntity],
    synchronize: false,
    logging: "all"
})