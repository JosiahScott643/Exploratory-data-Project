
SELECT * 
FROM layoffs_staging2;



SELECT *
FROM layoffs_staging2;

SELECT MAX(total_laid_off), MAX(percentage_laid_off)
FROM layoffs_staging2;

SELECT company 
FROM layoffs_staging2
WHERE percentage_laid_off = 1;

SELECT company, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company
ORDER BY 2 DESC;

SELECT MIN(`date`), MAX(`date`)
FROM layoffs_staging2;

SELECT industry, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY industry
ORDER BY 2 DESC;

SELECT YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY YEAR(`date`);
