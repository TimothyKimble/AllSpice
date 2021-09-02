using System;
using System.Collections.Generic;
using AllSpice.Models;
using AllSpice.Repositories;

namespace AllSpice.Services
{
  public class RecipesService
  {
    private readonly RecipesRepository _repo;
    public RecipesService(RecipesRepository repo)
    {
      _repo = repo;
    }
    internal List<Recipe> Get()
    {
      return _repo.Get();
    }

    internal Recipe Get(int id)
    {
      Recipe recipe = _repo.Get(id);
      if (recipe == null)
      {
        throw new Exception("Invalid Id");
      }
      return recipe;
    }

    internal Recipe Create(Recipe newRecipe)
    {
      return _repo.Create(newRecipe);
    }

    internal void Delete(int recipeId, string userId)
    {
      Recipe recipeDelete = Get(recipeId);
      if (recipeDelete.CreatorId != userId)
      {
        throw new Exception("You don't have permission to delete");
      }
      _repo.Delete(recipeId);
    }
  }
}