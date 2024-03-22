select * 
from PotfolioProject..CovidDeaths
where continent is not null
order by 3,4




--select * 
--from PotfolioProject..CovidVaccination
where continent is not null
--order by 3,4

--selecting data that we are going to be used

select location, date,total_cases, new_cases, total_deaths, population
from PotfolioProject..CovidDeaths
where continent is not null
order by 1,2

-- looking at total cases vs total deaths

select * 
from PotfolioProject..CovidDeaths
where continent is not null




--select * 
--from PotfolioProject..CovidVaccination
--order by 3,4

--selecting data that we are going to be used

----select location, date,total_cases,total_deaths, (total_deaths/total_cases)*100 as Death_percentage
----from PotfolioProject..CovidDeaths
where continent is not null
----order by 1,2

--select location, date,total_cases,total_deaths, (total_deaths/total_cases)*100 as Death_percentage
--from PotfolioProject..CovidDeaths
where continent is not null
--where location like '%states%'
--order by 1,2

--Looking at the Totat_cases vs Population
-- shows what percentage of ppeople got covid

select location, date,total_cases,population, (total_cases/population)*100 as Death_percentage
from PotfolioProject..CovidDeaths
where continent is not null
where location like '%states%'
order by 1,2

select location, date,total_cases,population, (total_cases/population)*100 as percentagepopulationinfected
from PotfolioProject..CovidDeaths
where continent is not null
order by 1,2

-- Looking at countries with highest infection rate compaired to population
select location,population, MAX(total_cases) as HighestInfectioncount, MAX((total_cases/population))*100 as percentagepopulationinfected
from PotfolioProject..CovidDeaths
--where location like '%states%'
where continent is not null
group by location,population
order by percentagepopulationinfected desc

--Lets break thigs down by continent

select location, MAX(cast(total_deaths as int)) as totaldeathcount
from PotfolioProject..CovidDeaths
where continent is null
--where location like '%states%'
group by location
order by totaldeathcount desc

--showing the country with the highest death count vs the population
select location, MAX(cast(total_deaths as int)) as totaldeathcount
from PotfolioProject..CovidDeaths
where continent is not null
--where location like '%states%'
group by location
order by totaldeathcount desc




-- showing continent with the highest death count per population

select continent, MAX(cast(total_deaths as int)) as totaldeathcount
from PotfolioProject..CovidDeaths
where continent is not null
--where location like '%states%'
group by continent
order by totaldeathcount desc

-- GLOBE NUM

Select date,sum(new_cases) as total_cases, sum(cast(new_deaths as int)) as total_deaths, sum(cast(new_deaths as int))/sum(new_cases)*100 as deathpercentage
from PotfolioProject..CovidDeaths
where continent is not null
GROUP BY DATE
order by 1,2

Select sum(new_cases) as total_cases, sum(cast(new_deaths as int)) as total_deaths, sum(cast(new_deaths as int))/sum(new_cases)*100 as deathpercentage
from PotfolioProject..CovidDeaths
where continent is not null
--GROUP BY DATE
order by 1,2

-- looking at total vaccination vs population
select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
from PotfolioProject..CovidVaccinations vac
join PotfolioProject..CovidDeaths dea
on vac.location=dea.location

and vac.date= dea.date
where dea.continent is not null
order by 2,3
 

select * 
from PotfolioProject..CovidVaccination vac
join PotfolioProject..CovidDeaths dea
on vac.location=dea.location
and vac.date= dea.date

select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations, sum(cast(vac.new_vaccinations as int)) over (partition by dea.location order by dea.location, dea.date) as Rollingstonvaccination
from PotfolioProject..CovidVaccinations vac
join PotfolioProject..CovidDeaths dea
on vac.location=dea.location
and vac.date= dea.date
where dea.continent is not null
order by 2,3



