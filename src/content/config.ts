import { defineCollection, z } from 'astro:content';

const notesCollection = defineCollection({
  type: 'content',
  schema: z.object({
    title: z.string(),
    date: z.date(),
    pillar: z.enum([
      'intelligence-service-building',
      'automation-professional-services',
      'malaysian-market-insights',
      'products-for-intermediaries'
    ]),
    excerpt: z.string(),
    keyPoints: z.array(z.string()).optional(),
    readTime: z.number().optional(),
  }),
});

export const collections = {
  notes: notesCollection,
};
