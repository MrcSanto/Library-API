import {Router} from 'express';
import {BookController} from "../book-controllers/book-controller";

const router = Router();
const bookController = new BookController();

router.get("/", bookController.getAll);
router.get("/:id", bookController.getByid);
router.post("/:id", bookController.create);
router.put("/:id", bookController.replace);
router.patch("/:id", bookController.update);
router.delete("/:id", bookController.delete);

export default router;