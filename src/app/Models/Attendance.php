<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Attendance extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id', 'work_date', 'start_time', 'end_time'
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function breakTimes()
    {
        return $this->hasMany(BreakTime::class);
    }

    public function getFormattedStartTimeAttribute()
    {
        return Carbon::parse($this->start_time)->format('H:i');
    }

    public function getFormattedEndTimeAttribute()
    {
        return $this->end_time ? Carbon::parse($this->end_time)->format('H:i') : '記録なし';
    }

    public function getWorkHoursAttribute()
    {
        if (!$this->end_time) {
            return 0;
        }

        $start = Carbon::parse($this->start_time);
        $end = Carbon::parse($this->end_time);
        $totalBreakMinutes = $this->breakTimes->sum(function ($break) {
            return Carbon::parse($break->end_time)->diffInMinutes(Carbon::parse($break->start_time));
        });

        $workMinutes = $end->diffInMinutes($start) - $totalBreakMinutes;

        return $workMinutes;
    }

    // public function getFormattedWorkHoursAttribute()
    // {
    //     return Carbon::parse($this->work_hours)->format('H:i');
    // }

    public function getTotalBreakMinutesAttribute()
    {
        return $this->breakTimes->sum(function ($break) {
            if ($break->end_time) {
                return Carbon::parse($break->end_time)->diffInMinutes(Carbon::parse($break->start_time));
            }
            return 0;
        });
    }
}