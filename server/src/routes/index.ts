import { Router } from 'express';
import GroupRoutes from './GroupRoutes';
import CommentRoutes from './CommentRoutes';
import ScoreRoutes from './ScoreRoutes';
import FeedRoutes from './FeedRoutes';
import PostRoutes from './PostRoutes';

const router = Router();

router.use('/feed', FeedRoutes);
router.use('/groups', GroupRoutes);
router.use('/comments', CommentRoutes);
router.use('/posts', PostRoutes);
router.use('/score', ScoreRoutes);
router.route('/').get((_, res) => {
  res.status(200).send('made by bookworms');
});


export default router;
