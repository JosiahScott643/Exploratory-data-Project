<h1>Exploratory Data Analysis (EDA) Project - Layoffs Dataset</h1>

<h2>Description</h2>
The <b>Exploratory Data Analysis (EDA) Project</b> focuses on analyzing a layoffs dataset using <b>MySQL Workbench</b> to uncover trends and insights. The project includes:

<ol>
  <li><b>Exploring Dataset Overview</b>  
    <ul>
      <li>Examined the structure and content of the dataset.</li>
    </ul>
  </li>

  <li><b>Finding Maximum and Minimum Values</b>  
    <ul>
      <li>Identified the maximum number of layoffs and the highest percentage of layoffs.</li>
    </ul>
  </li>

  <li><b>Identifying Companies with 100% Layoffs</b>  
    <ul>
      <li>Queried companies where 100% of the workforce was laid off.</li>
    </ul>
  </li>

  <li><b>Aggregating Layoff Data by Company</b>  
    <ul>
      <li>Summarized total layoffs for each company and ranked them in descending order.</li>
    </ul>
  </li>

  <li><b>Analyzing Date Range of Layoffs</b>  
    <ul>
      <li>Identified the earliest and most recent layoff dates in the dataset.</li>
    </ul>
  </li>

  <li><b>Grouping Layoffs by Industry</b>  
    <ul>
      <li>Summarized layoffs by industry and ranked industries with the highest layoffs.</li>
    </ul>
  </li>

  <li><b>Analyzing Layoffs by Year</b>  
    <ul>
      <li>Aggregated total layoffs by year for time-based trend analysis.</li>
    </ul>
  </li>
</ol>

<br />

<h2>Languages and Tools Used</h2>

<ul>
  <li><b>MySQL Workbench</b></li>
  <li><b>SQL Queries</b></li>
  <li><b>Aggregate Functions</b></li>
  <li><b>Data Aggregation and Grouping</b></li>
</ul>

<h2>Project Walk-through</h2>

<ol>
  <li><b>Exploring Dataset Overview</b>
    <p>
      Retrieved all records from the layoffs dataset to examine the available data.
    </p>

<pre><code>
SELECT *
FROM layoffs_staging2;
</code></pre>
  </li>

  <li><b>Finding Maximum and Minimum Values</b>
    <p>
      Identified the maximum number of layoffs and the highest percentage of layoffs.
    </p>

<pre><code>
SELECT MAX(total_laid_off), MAX(percentage_laid_off)
FROM layoffs_staging2;
</code></pre>
  </li>

  <li><b>Identifying Companies with 100% Layoffs</b>
    <p>
      Queried companies where 100% of the workforce was laid off.
    </p>

<pre><code>
SELECT company 
FROM layoffs_staging2
WHERE percentage_laid_off = 1;
</code></pre>
  </li>

  <li><b>Aggregating Layoff Data by Company</b>
    <p>
      Summarized total layoffs for each company and ranked them in descending order.
    </p>

<pre><code>
SELECT company, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company
ORDER BY 2 DESC;
</code></pre>
  </li>

  <li><b>Analyzing Date Range of Layoffs</b>
    <p>
      Identified the earliest and most recent layoff dates in the dataset.
    </p>

<pre><code>
SELECT MIN(`date`), MAX(`date`)
FROM layoffs_staging2;
</code></pre>
  </li>

  <li><b>Grouping Layoffs by Industry</b>
    <p>
      Summarized total layoffs by industry and ranked industries with the highest layoffs.
    </p>

<pre><code>
SELECT industry, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY industry
ORDER BY 2 DESC;
</code></pre>
  </li>

  <li><b>Analyzing Layoffs by Year</b>
    <p>
      Aggregated total layoffs by year to identify time-based trends.
    </p>

<pre><code>
SELECT YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY YEAR(`date`);
</code></pre>
  </li>
</ol>

<h2>Key Insights</h2>
<ul>
  <li>Identified companies with complete workforce layoffs, indicating critical failure or restructuring.</li>
  <li>Observed industries most affected by layoffs, helping pinpoint sector vulnerabilities.</li>
  <li>Analyzed the year-over-year trends to understand how layoffs evolved over time.</li>
</ul>

<h2>Final Findings</h2>
<p>
The EDA revealed important trends and insights about layoffs across different companies, industries, and time periods. The cleaned and analyzed dataset is now ready for advanced modeling or visualization.
</p>

<h2>Example Queries for Reference</h2>

<ol>
  <li><b>Check Layoff Trends by Industry</b>  
<pre><code>
SELECT industry, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY industry
ORDER BY 2 DESC;
</code></pre>
  </li>

  <li><b>View Layoff Trends by Year</b>  
<pre><code>
SELECT YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY YEAR(`date`);
</code></pre>
  </li>
</ol>

<h2>Key Learnings</h2>
<ul>
  <li>Enhanced understanding of <b>SQL aggregate functions</b> and data grouping techniques.</li>
  <li>Strengthened expertise in <b>data exploration and summarization</b> using SQL queries.</li>
  <li>Developed analytical skills to identify patterns and trends from raw datasets.</li>
</ul># Exploratory-data-Project
