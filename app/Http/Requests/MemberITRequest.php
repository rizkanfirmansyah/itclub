<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class MemberITRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required',
            'class' => 'required',
            'division_id' => 'required',
            'majors' => 'required',
            'position' => 'required',
            'image' => 'nullable|image|mimes:jpeg,png,jpg|max:2000',
        ];
    }
}
