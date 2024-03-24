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
        return Carbon::parse($this->start_time)->format('H:i:s');
    }

    public function getFormattedEndTimeAttribute()
    {
        return $this->end_time ? Carbon::parse($this->end_time)->format('H:i:s') : '記録なし';
    }

    public function getWorkHoursAttribute()
    {
        if (!$this->end_time) {
            return "00:00:00";
        }

        $start = Carbon::parse($this->start_time);
        $end = Carbon::parse($this->end_time);

        $totalBreakSeconds = $this->breakTimes->sum(function ($break) {
            return Carbon::parse($break->end_time)->diffInSeconds(Carbon::parse($break->start_time));
        });

        $workSeconds = $end->diffInSeconds($start) - $totalBreakSeconds;

    $hours = floor($workSeconds / 3600);
    $minutes = floor(($workSeconds % 3600) / 60);
    $seconds = $workSeconds % 60;

    return sprintf('%02d:%02d:%02d', $hours, $minutes, $seconds);
    }

    public function getFormattedTotalBreakTimeAttribute()
    {
        $totalBreakSeconds = $this->breakTimes->sum(function ($break) {
            if ($break->end_time) {
                return Carbon::parse($break->end_time)->diffInSeconds(Carbon::parse($break->start_time));
            }
            return 0;
        });
        $hours = floor($totalBreakSeconds / 3600);
        $minutes = floor(($totalBreakSeconds % 3600) / 60);
        $seconds = $totalBreakSeconds % 60;

        return sprintf('%02d:%02d:%02d', $hours, $minutes, $seconds);
    }
}
