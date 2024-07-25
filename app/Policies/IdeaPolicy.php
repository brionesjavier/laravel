<?php

namespace App\Policies;

use App\Models\Idea;
use App\Models\User;
use Illuminate\Auth\Access\Response;



class IdeaPolicy
{

    public function update(User $user, Idea $idea): bool
    {
        //return $user->id === $idea->user_id;
        return $idea->user()->is($user);
    }

 
    public function delete(User $user, Idea $idea): bool
    {
        return $this->update($user,$idea);
    }

    public function updateLikes(User $user, Idea $idea): bool
    {
        return $idea->user()->isNot($user);
    }


}